class EnrollmentsController < ApplicationController

  def new
    @event = Event.find(params[:event_id])
    @enrollment = Enrollment.new
  end

  def create

  end



  private

  def enrollment_params
    params.require(:event_attribute).permit(:event_id, :attribute_type, :attribute_value, :attribute_label, :name)
  end
end