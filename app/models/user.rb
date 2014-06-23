class User < ActiveRecord::Base
  has_secure_password
  has_many :enrollments, dependent: :destroy
  has_many :events, through: :enrollments
  belongs_to :group

  validates :username, uniqueness: true, length: { minimum: 3 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :birth_date, presence: true
  validates :address, presence: true
  validates :password, presence: true
  validates :password, length: { minimum: 6 },
                       format: { with: /.*(\d.*[A-Z]|[A-Z].*\d).*/}

  def get_enrollment_data_for_event(id)
    e = enrollments.find_by event_id: id
    puts e.enrollment_datas
    e.enrollment_datas
  end
end
