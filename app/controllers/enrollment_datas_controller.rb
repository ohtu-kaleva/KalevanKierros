class EnrollmentDatasController < ApplicationController

  def create
    @enrollment_data = EnrollmentData.new(enrollment_data_params)
    respond_to do |format|
      if @enrollment_data.save
        format.html { redirect_to :root, notice: 'Enrollment data was succesfully created.' }
      else
        format.html { redirect_to :root, notice: 'Oh man!' }
      end
    end
  end

  private
  def enrollment_data_params
    params.require(:enrollment_data).permit(:name, :value, :enrollment_id)
  end
end