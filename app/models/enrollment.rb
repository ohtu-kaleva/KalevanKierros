class Enrollment < ActiveRecord::Base
  belongs_to :event
  belongs_to :user, dependent: :destroy
  has_many :enrollment_datas
end
