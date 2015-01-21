class StaticPagesController < ApplicationController
  before_action :redirect_if_user_not_admin, only: [:kk_enrollment]

  def home
  end

  def kk_enrollment
    @years = Result.uniq.pluck :year
    @account_number = AppSetting.find_by name: 'KkAccountNumber'
    @kk_year = AppSetting.find_by name: 'KkYear'
    @deadline = AppSetting.find_by name: 'Enrollment_Deadline'
  end

  def ilmoittautuminen
    @events = Event.where(open: true)
  end
end
