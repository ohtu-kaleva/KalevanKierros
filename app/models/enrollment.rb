class Enrollment < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :enrollment_datas
  accepts_nested_attributes_for :enrollment_datas
end
