class AppSetting < ApplicationRecord
  validates :name, uniqueness: true
end
