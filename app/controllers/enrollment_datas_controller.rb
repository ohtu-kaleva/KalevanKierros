class EnrollmentDatasController < ApplicationController

  def create
    @enrollment_data = EnrollmentData.new(enrollment_data_params)

    if @enrollment_data.save
      redirect_to :root, flash: { success: 'Enrollment data was succesfully created.' }
    else
      redirect_to :root, flash: { error: 'Enrollment data is not valid' }
    end
  end

  private

  def enrollment_data_params
    params.require(:enrollment_data).permit(:name, :value, :enrollment_id, :attribute_index)
  end
end
