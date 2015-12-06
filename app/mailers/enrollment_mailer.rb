class EnrollmentMailer < ActionMailer::Base
  default from: "#{ActionMailer::Base.smtp_settings[:user_name]}"

  def send_enrollment_email(user, event, enrollment)
    @user = user
    @enrollment = enrollment
    @account_number = event.account_number
    @receiver = event.payment_receiver
    @event_name = event.name
    tmp = calculate_price(enrollment, event)

    case event.sport_type
    when 'RunningEvent'
      running_enrollment_email
    when 'RowingEvent'
      rowing_enrollment_email
    when 'SkatingEvent'
      skating_enrollment_email
    when 'SkiingEvent'
      skiing_enrollment_email
    when 'OrienteeringEvent'
      orienteering_enrollment_email
    when 'CyclingEvent'
      cycling_enrollment_email
    when ''
      no_sport_event_enrollment_email
    end
  end

  def calculate_price(enrollment, event)
    # Varmistetaan että päivien vertailussa verrataan tähän päivään evaluoimalla
    # Date.today aina ajettaessa send_enrollment_email
    enrollment_datas = enrollment.enrollment_datas
    get_this_day = lambda { Date.today }

    if get_this_day.call <= event.end_date
      tmp_price = event.price
      event.event_attributes.each do |a|
        if a.attribute_type.in? ['radio_button', 'select']
          selection = a.attribute_value.split(';')
          prices = a.payment_value.split(';')
          selected = enrollment_datas.find_by(attribute_index: a.attribute_index).value
          tmp_price = tmp_price + prices[selection.index(selected)].to_i
        elsif a.attribute_type == 'check_box'
          if enrollment_datas.find_by(attribute_index: a.attribute_index).value != ""
            tmp_price = tmp_price + a.payment_value.to_i
          end
        end
      end
      @price = tmp_price/100.0
      @pay_day = event.end_date.to_s

    else
      tmp_price = event.second_price
      event.event_attributes.each do |a|
        if a.attribute_type.in? ['radio_button', 'select']
          selection = a.attribute_value.split(';')
          prices = a.second_payment_value.split(';')
          selected = enrollment_datas.find_by(attribute_index: a.attribute_index).value
          tmp_price = tmp_price + prices[selection.index(selected)].to_i
        elsif a.attribute_type == 'check_box'
          if enrollment_datas.find_by(attribute_index: a.attribute_index).value != ""
            tmp_price = tmp_price + a.second_payment_value.to_i
          end
        end
      end
      @price = tmp_price/100.0
      @pay_day = 'heti'
    end
  end

  def running_enrollment_email
    @type = @enrollment.enrollment_datas.find_by(name:'Tyyppi').value

    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Juoksuun',
         template_name: :running_enrollment_email).deliver
  end

  def rowing_enrollment_email
    @pair = @enrollment.enrollment_datas.find_by(name: 'Parin nimi').value
    @style = @enrollment.enrollment_datas.find_by(name: 'Melonta').value
    @two_or_one = @enrollment.enrollment_datas.find_by(name: 'Tyyli').value
    if @two_or_one == 'Vuoro'
      @price *= 2.0
    end

    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Soutuun',
         template_name: :rowing_enrollment_email).deliver
  end

  def skating_enrollment_email
    @calculator = @enrollment.enrollment_datas.find_by(name: 'Kierroslaskija').value

    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Luisteluun',
         template_name: :skating_enrollment_email).deliver
  end

  def skiing_enrollment_email
    @style = @enrollment.enrollment_datas.find_by(name: 'Tyyli').value

    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Hiihtoon',
         template_name: :skiing_enrollment_email).deliver
  end

  def orienteering_enrollment_email
    @emit = @enrollment.enrollment_datas.find_by(name: 'Emit').value

    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Suunnistukseen',
         template_name: :orienteering_enrollment_email).deliver
  end

  def cycling_enrollment_email
    mail(to: @user.email,
         subject: 'Ilmoittautuminen Kalevan Kierroksen Pyöräilyyn',
         template_name: :cycling_enrollment_email).deliver
  end

  def no_sport_event_enrollment_email
    mail(to: @user.email,
      subject: 'Ilmoittautuminen',
      template_name: :no_sport_event_email).deliver
  end
end