class EnrollmentsController < ApplicationController

  before_action :authenticate, only: [:new, :create, :show, :show_enrollments_for_event, :index, :destroy, :update, :edit, :update_single,
                                     :update_payment_info, :remove_all_payment_info_for_event]
  before_action :check_for_existing_enrollment, only:  [:new, :create]
  before_action :set_enrollment_or_redirect, only: [:show, :destroy, :edit]
  before_action :redirect_if_user_not_admin, only: [:show_enrollments_for_event, :index, :destroy, :update, :edit, :update_single,
                                                    :update_payment_info, :remove_all_payment_info_for_event]

  def new
    @event = Event.find_by id: params[:event_id]
    if @event
      @user = current_user
      if Date.today < @event.start_date
        redirect_to root_path, flash: { notice: 'Tapahtumaan ei voi vielä ilmoittautua' }
        return
      end
      if Date.today > @event.second_end_date
        redirect_to root_path, flash: { notice: 'Tapahtumaan ei voi enää ilmoittautua' }
        return
      end

      @enrollment = Enrollment.new
      @enrollment.enrollment_datas.build
    else
      redirect_to root_path
    end
  end

  def new_outsider_enrollment
    @event = Event.find_by id: params[:event_id]
    if not @event or not @event.open
      redirect_to :root and return
    end
    if Date.today > @event.second_end_date
      redirect_to root_path, flash: { notice: 'Tapahtumaan ei voi enää ilmoittautua' } and return
    end
    @user = User.new
    @attributes = @event.event_attributes
  end

  def index
    @events = Event.all
  end

  def edit
    @datas = @enrollment.enrollment_datas
  end

  def create
    event = Event.find_by id: params[:enrollment][:event_id]
    user  = current_user
    if event && user
      create_enrollment(event, user, enrollment_params, params, true)
    else
      redirect_to root_path
    end
  end

  def create_enrollment(event, user, enrollment_values, values, user_generated)
    data_list = []
    attrs = event.event_attributes.select {|a| a.attribute_type != 'plain_text' and a.attribute_type != 'hidden' and a.removed == false }
    # loop for creating information for data
    attrs.each do |a|
      if user_generated
        attribute_key = a.name
      else
        attribute_key = a.name.downcase.to_sym
      end

      if !values.has_key? attribute_key
        if user_generated
          redirect_to root_path, flash: { error: 'Ilmoittautuminen epäonnistui. Täytä lomake uudelleen ja varmista, että pakolliset kentät on täytetty.' }
        end
        return
      end
      if values[attribute_key].kind_of?(Array)
        value = values[attribute_key].join(' ')
        attribute_index = EventAttribute.where(event_id: event.id).where(name: a.name).first.attribute_index
        data_list.append(EnrollmentData.new(name: a.name, value: value, attribute_index: attribute_index))
      else
        attribute_index = EventAttribute.where(event_id: event.id).where(name: a.name).first.attribute_index
        data_list.append(EnrollmentData.new(name: a.name, value: values[attribute_key], attribute_index: attribute_index))
      end
    end

    @enrollment = Enrollment.new(enrollment_values)
    @enrollment.user = user

    if !user_generated && values[:aika]
      @enrollment.time = to_seconds(values[:aika])
    end

    if !user_generated && values[:maksettu] && (is_float? values[:maksettu])
      @enrollment.paid = (values[:maksettu].to_f * 100.0).to_i
    end

    if !user_generated && values[:arvopiv] && (is_date? values[:arvopiv])
      @enrollment.value_date = Date::strptime(values[:arvopiv], "%d.%m.%Y")
    end

    if @enrollment.save
      data_list.each do |d|
        d.enrollment_id = @enrollment.id
        d.save
      end

      if user
        if event.sport_type == 'RowingEvent'
          style = @enrollment.enrollment_datas.find_by name:'Tyyli'
          pair_name_datum = @enrollment.enrollment_datas.find_by name:'Parin nimi'
          pair_name = pair_name_datum.value.split(' ')
          if(style.value == 'Vuoro')
            if pair_name.length != 2
              @enrollment.destroy
              if user_generated
                redirect_back(fallback_location: root_path, flash: { error: 'Parin nimi ei ole kirjoitettu oikein. Kirjoita parisi nimeksi etunimi ja sukunimi välilyönnillä erotettuna.' })
              end
              return
            end
            other_rower = @enrollment.enrollment_datas.find_by name:'kk_numero'
            if other_rower.value != ''
              if not enroll_other_rower_to_event(other_rower.value, user, @enrollment, event)
                @enrollment.destroy
                if user_generated
                  redirect_back(fallback_location: root_path, flash: { error: 'Toista henkilöä ei löytynyt kannasta. Jos hän ei ole kiertäjä, jätä kk-numeron kenttä tyhjäksi.' })
                end
                return
              end
            else
              gender = @enrollment.enrollment_datas.find_by(name: 'Parin sukupuoli').value
              birth_year = @enrollment.enrollment_datas.find_by(name: 'Parin syntymävuosi').value
              if not create_new_user_for_outsider_rower(pair_name[0], pair_name[1], gender, birth_year, user, @enrollment, event)
                @enrollment.destroy
                if user_generated
                  redirect_back(fallback_location: root_path, flash: { error: 'Jokin meni pieleen. Tarkista tiedot ja yritä uudestaan.' })
                end
                return
              end
            end
          end
        end
        user.enrollments << @enrollment
        if user_generated
          EnrollmentMailer.send_enrollment_email(user, event, @enrollment)
        end
      end

      if user_generated
        flash[:success] = "Ilmoittautumisesi tapahtumaan on kirjattu."
        redirect_to enrollment_path(@enrollment.id)
      end
    else
      if user_generated
        render :new
      end
      return
    end
  end

  def create_outsider_enrollment
    if User.last
        latest = User.last.id + 1
    else
        latest = 1
    end
    name = "outsider#{latest}"
    params[:user][:username] = name
    params[:user][:password] = 'X92fueslwR'
    params[:user][:password_confirmation] = 'X92fueslwR'
    user_params = params.require(:user).permit(:first_name, :last_name, :username, :email, :phone_number, :city, :street_address, :postal_code, :birth_date, :gender, :password, :password_confirmation)

    user = User.new(user_params)

    if user.save
      outsider_number = 1100000+user.id
      user.update_attribute :kk_number, outsider_number
      event = Event.find_by id: params[:event_id]
      if event && event.open
        data_list = []
        attrs = event.event_attributes.select {|a| a.attribute_type != 'plain_text' and a.attribute_type != 'hidden' and a.removed == false }
        attrs.each do |a|
          if !params[:enrollment].has_key? a.name
            redirect_to root_path and return
          end
          if params[:enrollment][a.name].kind_of?(Array)
            value = params[:enrollment][a.name].join(' ')
            attribute_index = EventAttribute.where(event_id: event.id).where(name: a.name).first.attribute_index
            data_list.append(EnrollmentData.new(name:a.name, value:value, attribute_index: attribute_index))
          else
            attribute_index = EventAttribute.where(event_id: event.id).where(name: a.name).first.attribute_index
            data_list.append(EnrollmentData.new(name:a.name, value:params[:enrollment][a.name], attribute_index: attribute_index))
          end
        end

        @enrollment = Enrollment.new(event_id: event.id)
        if @enrollment.save
          data_list.each do |d|
            d.enrollment_id = @enrollment.id
            d.save
          end
          if event.sport_type == 'RowingEvent'
            pair = @enrollment.enrollment_datas.find_by(name: 'Tyyli').value
            if pair == 'Vuoro'
              other_rower_is_user = @enrollment.enrollment_datas.find_by(name: 'Onko pari kiertäjä').value
              if other_rower_is_user == 'Kyllä'
                @enrollment.destroy
                user.destroy
                redirect_back(fallback_location: root_path, flash: { error: 'Ulkopuolisena et voi ilmoittaa kiertäjää pariksesi.' }) and return
              else
                other_name = @enrollment.enrollment_datas.find_by(name:'Parin nimi').value
                name_split = other_name.split(' ')
                if name_split.length != 2
                  @enrollment.destroy
                  user.destroy
                  redirect_back(fallback_location: root_path, flash: { error: 'Parin nimi ei ole kirjoitettu oikein. Kirjoita etunimi ja sukunimi välilyönnillä erotettuna' }) and return
                end
                birth_year = @enrollment.enrollment_datas.find_by(name:'Parin syntymävuosi').value
                gender = @enrollment.enrollment_datas.find_by(name:'Parin sukupuoli').value
                if not create_new_user_for_outsider_rower(name_split[0], name_split[1], gender, birth_year, user, @enrollment, event)
                  @enrollment.destroy
                  user.destroy
                  redirect_back(fallback_location: root_path, flash: { error: 'Jotain meni pieleen. Tarkista tietojen oikeellisuus ja yritä uudestaan.' }) and return
                end
              end
            end
          end
          user.enrollments << @enrollment
          EnrollmentMailer.send_enrollment_email(user, event, @enrollment)
        else
          redirect_back(fallback_location: root_path, flash: { error: 'Jotain meni pieleen' }) and return
        end
      end
    else
      redirect_back(fallback_location: root_path, flash: { error: 'Et antanut kaikkia tietoja' }) and return
    end
    redirect_to :root, flash: { success: 'Ilmoittautumisesi tapahtumaan on kirjattu.' } and return
  end

  def create_new_user_for_outsider_rower(first_name, last_name, gender, birth_year, enroller, other_enrollment, event)
    latest = 1
    if User.last
      latest = User.last.id + 1
    end
    username = "outsider#{latest}"
    if not /\A\d{4}\z/ === birth_year
      return false
    end
    birth_date = Date.parse("1.1.#{birth_year}")
    user = User.new(username: username, first_name: first_name, last_name: last_name, gender: gender, birth_date: birth_date, email:'nn@nn.nn', password:'Passwerd1', password_confirmation:'Passwerd1', city:'nn', postal_code: '00000', street_address:'nn', phone_number:'nnnn')
    puts 'Käyttäjä luodaan!'
    if user.save
      puts 'Käyttäjä luotu!'
      enrollment = Enrollment.new(event_id: event.id, user_id: user.id)
      if enrollment.save
        paddle = other_enrollment.enrollment_datas.find_by name:'Melonta'
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Melonta', value: paddle.value, attribute_index: 1).save
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Parin nimi', value: enroller.full_name, attribute_index: 3).save
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Parin sukupuoli', value: enroller.gender, attribute_index: 4).save
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Parin syntymävuosi', value: enroller.birth_date.year, attribute_index: 5).save
        kiertaja = 'Ei'
        if enroller.active
          kiertaja = 'Kyllä'
        end
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Onko pari kiertäjä', value: kiertaja, attribute_index: 6).save
        kk_number = ''
        if enroller.kk_number.to_s.start_with?('33')
          kk_number = enroller.kk_number.to_s
        end
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'kk_numero', value: kk_number, attribute_index: 7).save
        boatname = "#{enroller.first_name[0]} #{enroller.last_name}, #{user.first_name[0]} #{user.last_name}"
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Venekunta', value: boatname, attribute_index: 8).save
        EnrollmentData.new(enrollment_id: other_enrollment.id, name:'Venekunta', value: boatname, attribute_index: 8).save
        return true
      end
      return false
    end
  end

  def enroll_other_rower_to_event(kk_number, enroller, other_enrollment, event)
    user = User.find_by kk_number: kk_number
    if user
      enrollment = Enrollment.new user_id: user.id, event_id: event.id
      if enrollment.save
        paddle = other_enrollment.enrollment_datas.find_by name:'Melonta'
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Melonta', value: paddle.value, attribute_index: 1).save
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Tyyli', value: 'Vuoro', attribute_index: 2).save
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Parin nimi', value: enroller.full_name, attribute_index: 3).save
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Parin sukupuoli', value: enroller.gender, attribute_index: 4).save
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Parin syntymävuosi', value: enroller.birth_date.year, attribute_index: 5).save
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Onko pari kiertäjä', value: 'Kyllä', attribute_index: 6).save
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'kk_numero', value: enroller.kk_number, attribute_index: 7).save
        boatname = "#{enroller.first_name[0]} #{enroller.last_name}, #{user.first_name[0]} #{user.last_name}"
        EnrollmentData.new(enrollment_id: enrollment.id, name: 'Venekunta', value: boatname, attribute_index: 8).save
        EnrollmentData.new(enrollment_id: other_enrollment.id, name: 'Venekunta', value: boatname, attribute_index: 8).save
        return true
      end
    end
    return false
  end

  def update
    message = {}
    if params[:times]
      times = params[:times].delete_if {|key, value| value.blank? }
      times.each do |key, value|
        enrollment = Enrollment.find_by id:key
        if not enrollment.nil?
          if check_time_format(value)
            enrollment.update_attribute :time, to_seconds(value)
          else
            message[:error1] = 'Yksi tai useampi aika syötettiin virheellisessä muodossa.'
          end
        end
      end
    end
    if params[:paid]
      paid = params[:paid].delete_if {|key, value| value.blank? }
      paid.each do |key, value|
        enrollment = Enrollment.find_by id:key
        if not enrollment.nil?
          if is_float? value
            enrollment.update_attribute :paid, (value.to_f * 100.0).to_i
          else
            message[:error2] = 'Yksi tai useampi maksutieto syötettiin virheellisessä muodossa.'
          end
        end
      end
    end
    if params[:value_date]
      value_date = params[:value_date].delete_if {|key, value| value.blank? }
      value_date.each do |key, value|
        enrollment = Enrollment.find_by id:key
        if not enrollment.nil?
          if is_date? value
            enrollment.update_attribute :value_date, Date::strptime(value, "%d.%m.%Y")
          else
            message[:error] = 'Yksi tai useampi päivämäärä syötettiin virheellisessä muodossa.'
          end
        end
      end
    end
    redirect_back(fallback_location: root_path, flash: message)
  end

  def update_single
    user = User.find_by kk_number: params[:kk_number]
    unless !check_time_format(params[:times]) && user.nil?
      enrollment = Enrollment.find_by user_id: user.id, event_id: params[:event_id]
      enrollment.update_attribute :time, to_seconds(params[:times])
      render :nothing => true, status: 200
      #redirect_back(fallback_location: root_path)
    end

  end

  def delete_time
    enrollment = Enrollment.find_by id: params[:enrollment_id]
    if enrollment
      enrollment.update_attribute :time, nil
    end
    redirect_back(fallback_location: root_path)
  end

  def show
    @enrollment = Enrollment.find params[:enrollment_id]
    @data = @enrollment.enrollment_datas
    @price = @enrollment.calculate_price
    if @enrollment.created_at <= @enrollment.event.end_date
      @pay_day = @enrollment.event.end_date.to_s
    else
      @pay_day = 'heti'
    end
    @reference_number = @enrollment.construct_reference_number
    @receiver = @enrollment.event.payment_receiver
    @account_number = @enrollment.event.account_number
  end

  def remove_all_payment_info_for_event
    event = Event.find_by id: params[:event_id]
    event.enrollments.each do |e|
      e.update_attribute :paid, 0
    end
    redirect_back(fallback_location: root_path, flash: { success: 'Tapahtuman kaikki maksutiedot poistettu' })
  end

  def show_enrollments_for_event
    @event = Event.find_by id: params[:event_id]
    respond_to do |format|
      format.html
      format.csv { send_data @event.to_csv, :filename => @event.name + "_ilmoittautumiset.csv" }
      format.xls
      format.xlsx { send_data @event.to_xlsx.to_stream.read, :filename => @event.name + "_ilmoittautumiset.xlsx" }
    end
  end

  def destroy
    id = @enrollment.event.id
    @enrollment.destroy
    redirect_to show_enrollments_path(id), flash: { success: 'Ilmoittautuminen peruttu onnistuneesti' }
  end

  def import_csv
    event = Event.find_by id: params[:event_id]

    if event.nil?
      redirect_to root_path, flash: { error: "Tapahtumaa ei löydy" }
      return
    end

    file = params[:file]
    if file.nil?
      redirect_to show_enrollments_path(params[:event_id]), flash: { error: "Ei valittua tiedostoa!" }
      return
    end

    CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      result_hash = row.to_hash
      user = User.find_by kk_number: result_hash[:kknumero]

      if user
        enrollment = Enrollment.find_by user_id: user.id

        if enrollment
          if result_hash[:aika]
            enrollment.update_attribute :time, to_seconds(result_hash[:aika])
          end

          if is_float? result_hash[:maksettu]
            enrollment.update_attribute(:paid, (result_hash[:maksettu].to_f * 100.0).to_i)
          end

          if is_date? result_hash[:arvopiv]
            enrollment.update_attribute(:value_date, Date::strptime(result_hash[:arvopiv], "%d.%m.%Y"))
          end

          if event.sport_type == 'RowingEvent'
            pair = User.find_by kk_number: result_hash[:kk_numero]
            if pair
              pair_enrollment = Enrollment.find_by id: pair.find_enrollment_id_by_event(event.id)
              if pair_enrollment and result_hash[:aika]
                pair_enrollment.update_attribute :time, to_seconds(result_hash[:aika])
              end
            end
          end
        else
          enrollment_attributes = {event_id: event.id, user_id: user.id}
          create_enrollment(event, user, enrollment_attributes, result_hash, false)
        end
      end
    end
    redirect_to show_enrollments_path(params[:event_id])
  end

  def check_time_format(string)
    /\A\d{1,2}:\d{1,2}:\d{1,2}([,.]\d{1,2}){0,1}\z/ === string
  end

  private

  def is_float? string
    true if Float(string) rescue false
  end

  def is_date? string
    true if Date::strptime(string, "%d.%m.%Y") rescue false
  end

  def to_seconds(a)
    format = %w{hours minutes seconds}
    input = a
    seconds = input.split(":").map.with_index{|x,i| x.to_i.send(format[i])}.reduce(:+).to_i
  end

  def check_for_existing_enrollment
    if current_user
      if current_user.enrollments and current_user.enrollments.find_by(event_id: params[:event_id])
        redirect_to user_path(current_user), flash: { error: "Olet jo ilmoittautunut tapahtumaan." }
      end
    end
  end

  def check_for_permitted_values(value, attribute_options)

  end

  def set_enrollment_or_redirect
    if current_user
      @enrollment = Enrollment.find_by(id: params[:enrollment_id])
      return if @enrollment && ((current_user.id == @enrollment.user_id) || user_is_admin?)
    end
    redirect_to :root
  end

  def enrollment_params
    params.require(:enrollment).permit(:enrollment_id, :event_id)
  end
end
