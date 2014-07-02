class EnrollmentsController < ApplicationController

  before_action :check_for_existing_enrollment, only:  [:new, :create]
  before_action :set_enrollment_or_redirect, only: [:show]
  before_action :redirect_if_user_not_admin, only: [:show_enrollments_for_event, :index]

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

  def create
    event = Event.find_by id: params[:enrollment][:event_id]
    if event
      if event.open || (current_user && current_user.kk_enrollment)
        data_list = []
        attrs = event.event_attributes.select {|a| a.attribute_type != 'plain_text' }

        # loop for creating information for data
        attrs.each do |a|
          if !params.has_key? a.name || params[a.name].nil?
            redirect_to root_path and return
          end
          data_list.append(EnrollmentData.new(name:a.name, value:params[a.name]))
        end

        @enrollment = Enrollment.new(enrollment_params)
        if @enrollment.save
          data_list.each do |d|
            d.enrollment_id = @enrollment.id
            d.save
          end
          if current_user
            current_user.enrollments << @enrollment
          end
          flash[:success] = "Ilmoittautumisesi tapahtumaan on kirjattu."
        else
          render :new and return
        end
      end
    end

    redirect_to root_path
  end

  def show
    @data = @enrollment.enrollment_datas
  end

  def show_enrollments_for_event
    @event = Event.find_by id: params[:event_id]
    respond_to do |format|
      format.html
      format.csv { send_data @event.to_csv }
      format.xls
      format.xlsx do
        Axlsx::Package.new do |enrollments|
          enrollments.workbook do |wb|
            wb.add_worksheet do |sheet|
              sheet.add_row
              sheet.add_row [@event.name]
              sheet.add_row @event.spreadsheet_headers, :style => [:title]
              @event.participants.each do |user|
                sheet.add_row @event.enrollment_data_as_array(user)
              end
            end
          end
          send_data enrollments.to_stream.read, :filename => "ilmoittautumiset.xlsx"
        end
      end
    end
  end
  private

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
