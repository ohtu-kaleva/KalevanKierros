class AppSetting < ActiveRecord::Base
  validates :name, uniqueness: true
end
