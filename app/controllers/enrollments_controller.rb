class EnrollmentsController < ApplicationController

  def new
    @event = Event.find_by id: params[:event_id]
    @enrollment = Enrollment.new
    @enrollment.enrollment_datas.build
  end

  def create
    data_list = []
    event = Event.find(params[:enrollment][:event_id])
    attrs = event.event_attributes
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
    redirect_to :root
  end



  private

  def check_for_permitted_values(value, attribute_options)

  end


  def enrollment_params
    params.require(:enrollment).permit(:event_id, :user_id)
  end
end