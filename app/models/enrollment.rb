class Enrollment < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :enrollment_datas, dependent: :destroy
end
