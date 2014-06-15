class EnrollmentData < ActiveRecord::Base
  belongs_to :enrollment, dependent: :destroy
end
