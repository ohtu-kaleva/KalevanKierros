class EnrollmentDatasController < ApplicationController
  before_action :set_enrollment_data_or_redirect, only: [:update]


  def create
    @enrollment_data = EnrollmentData.new(enrollment_data_params)

    if @enrollment_data.save
      redirect_to :root, flash: { success: 'Enrollment data was succesfully created.' }
    else
      redirect_to :root, flash: { error: 'Enrollment data is not valid' }
    end
  end

  def update
    if @enrollment_data.update(enrollment_data_params)
      redirect_to edit_enrollment_path(@enrollment_data.enrollment.id)
    else
      redirect_to :root
    end
  end

  private

  def set_enrollment_data_or_redirect
    @enrollment_data = EnrollmentData.find_by id: params[:id]
  end

  def enrollment_data_params
    params.require(:enrollment_data).permit(:name, :value, :enrollment_id, :attribute_index)
  end
end
