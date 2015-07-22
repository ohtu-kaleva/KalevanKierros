class StaticPagesController < ApplicationController
  before_action :redirect_if_user_not_admin, only: [:kk_enrollment, :cover_image, :change_cover_image]

  def home
    @cover_image_path = AppSetting.find_by name: 'cover_image_path'
  end

  def cover_image
    @images = Dir.glob("app/assets/images/*")
  end

  def change_cover_image
    image_info = AppSetting.find_by name: 'cover_image_path'
    image_info.value = params[:image_path][18..-1]
    image_info.save
    redirect_to root_path
  end

  def kk_enrollment
    @years = Result.uniq.pluck :year
    @account_number = AppSetting.find_by name: 'KkAccountNumber'
    @kk_year = AppSetting.find_by name: 'KkYear'
    @deadline = AppSetting.find_by name: 'Enrollment_Deadline'
  end

  def ilmoittautuminen
    
  end
end
