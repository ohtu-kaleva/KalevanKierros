class EnrollmentsController < ApplicationController

  before_action :check_for_existing_enrollment, only:  [:new, :create]
  before_action :set_enrollment_or_redirect, only: [:show, :destroy, :edit]
  before_action :redirect_if_user_not_admin, only: [:show_enrollments_for_event, :index, :show, :destroy, :update, :edit, :update_single]

  def new
    @event = Event.find_by id: params[:event_id]
    if @event
      if !@event.open
        @user = current_user
        if !@user
          redirect_to signin_path and return
        end

        if !@user.kk_enrollment
          redirect_to root_path, flash: { notice: 'Ilmoittaudu ensin kalevan kierrokselle' }
          return
        end
        if Date.today < @event.start_date
          redirect_to root_path, flash: { notice: 'Tapahtumaan ei voi vielä ilmoittautua' }
          return
        end
        if Date.today > @event.second_end_date
          redirect_to root_path, flash: { notice: 'Tapahtumaan ei voi enää ilmoittautua' }
          return
        end
      end

      @enrollment = Enrollment.new
      @enrollment.enrollment_datas.build
    else
      redirect_to root_path
    end
  end

  def index
    @events = Event.all
  end

  def edit
    @datas = @enrollment.enrollment_datas
  end

  def create
    event = Event.find_by id: params[:enrollment][:event_id]
    if event
      if event.open || (current_user && current_user.kk_enrollment)
        data_list = []
        attrs = event.event_attributes.select {|a| a.attribute_type != 'plain_text' }
        # loop for creating information for data
        attrs.each do |a|
          if !params.has_key? a.name
            redirect_to root_path and return
          end
          if params[a.name].kind_of?(Array)
            value = params[a.name].join(' ')
            attribute_index = EventAttribute.where(event_id: event.id).where(name: a.name).first.attribute_index
            data_list.append(EnrollmentData.new(name:a.name, value:value, attribute_index: attribute_index))
          else
            attribute_index = EventAttribute.where(event_id: event.id).where(name: a.name).first.attribute_index
            data_list.append(EnrollmentData.new(name:a.name, value:params[a.name], attribute_index: attribute_index))
          end
        end

        @enrollment = Enrollment.new(enrollment_params)
        if @enrollment.save
          data_list.each do |d|
            d.enrollment_id = @enrollment.id
            d.save
          end

          if current_user
            current_user.enrollments << @enrollment
            EnrollmentMailer.send_enrollment_email(current_user, event, @enrollment)
          end

          flash[:success] = "Ilmoittautumisesi tapahtumaan on kirjattu."
        else
          render :new and return
        end
      end
    end
    redirect_to root_path
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
            message[:error] = 'Yksi tai useampi aika syötettiin virheellisessä muodossa.'
          end
        end
      end
    end
    redirect_to :back, flash: message
  end

  def update_single
    user = User.find_by kk_number: params[:kk_number]
    unless !check_time_format(params[:times]) && user.nil?
      enrollment = Enrollment.find_by user_id: user.id, event_id: params[:event_id]
      enrollment.update_attribute :time, to_seconds(params[:times])
      render :nothing => true, status: 200
      #redirect_to :back
    end

  end

  def delete_time
    enrollment = Enrollment.find_by id: params[:enrollment_id]
    if enrollment
      enrollment.update_attribute :time, nil
    end
    redirect_to :back
  end

  def show
    @data = @enrollment.enrollment_datas
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
    file = params[:file]
    if file.nil?
      redirect_to show_enrollments_path(params[:event_id]), flash: { error: "Ei valittua tiedostoa!" }
      return
    end
    CSV.foreach(file.path, headers: true, header_converters: :symbol) do |row|
      result_hash = row.to_hash
      enrollment = Enrollment.find_by id: result_hash[:ilm_nro]
      if enrollment
        if result_hash[:aika]
        enrollment.update_attribute :time, to_seconds(result_hash[:aika])
        end
      end
    end
    redirect_to show_enrollments_path(params[:event_id])
  end

  def check_time_format(string)
    /\A\d{1,2}:\d{1,2}:\d{1,2}([,.]\d{1,2}){0,1}\z/ === string
  end

  private

  def to_seconds(a)
    format = %w{hours minutes seconds}
    input = a
    seconds = input.split(":").map.with_index{|x,i| x.to_i.send(format[i])}.reduce(:+).to_i
  end

  def check_for_existing_enrollment
    if current_user
      if current_user.enrollments and current_user.enrollments.find_by(event_id: params[:event_id])
        redirect_to events_path, flash: { error: "Olet jo ilmoittautunut tapahtumaan." }
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
    params.require(:enrollment).permit(:event_id)
  end
end
