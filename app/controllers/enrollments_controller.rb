class EnrollmentsController < ApplicationController

  before_action :check_for_existing_enrollment, only:  [:new, :create]
  before_action :set_enrollment_or_redirect, only: [:show]

  def new
    if current_user
      @event = Event.find_by id: params[:event_id]
      if @event
        @enrollment = Enrollment.new
        @enrollment.enrollment_datas.build
        return
      end
    end

    redirect_to root_path
  end

  def index
    @events = Event.all
  end

  def create
    data_list = []
    event = Event.find(params[:enrollment][:event_id])
    attrs = event.event_attributes
    # loop for creating information for data
    attrs.each do |a|
      if params.has_key? a.name
        if params[a.name].nil?
          redirect_to :root
          return
        end
      end
      data_list.append(EnrollmentData.new(name:a.name, value:params[a.name]))
    end
    @enrollment = Enrollment.new(enrollment_params)
    @enrollment.save
    data_list.each do |d|
      d.enrollment_id = @enrollment.id
      d.save
    end
    if not current_user.nil?
      current_user.enrollments << @enrollment
    end
    redirect_to :root, notice: "Ilmoittautumisesi tapahtumaan on kirjattu."
  end

  def show
    @data = @enrollment.enrollment_datas
  end

  def show_enrollments_for_event
    @event = Event.find_by id: params[:event_id]
  end
  private

  def check_for_existing_enrollment
    if not current_user.nil?
      if not current_user.enrollments.nil? and not current_user.enrollments.find_by(event_id: params[:event_id]).nil?
        redirect_to :back, notice: "Olet jo ilmoittautunut tapahtumaan."
      end
    end
  end

  def check_for_permitted_values(value, attribute_options)

  end

  def set_enrollment_or_redirect
    if current_user
      puts params[:enrollment_id]
      @enrollment = Enrollment.find_by(id: params[:enrollment_id])
      return if @enrollment && ((current_user.id == @enrollment.user_id) || user_is_admin?)
    end
    redirect_to :root
  end

  def enrollment_params
    params.require(:enrollment).permit(:event_id)
  end
end
