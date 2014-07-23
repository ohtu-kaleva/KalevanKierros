class User < ActiveRecord::Base
  has_secure_password
  has_many :enrollments, dependent: :destroy
  has_many :events, through: :enrollments
  has_one :kk_enrollment
  belongs_to :group

  validates :username, uniqueness: true, length: { minimum: 3 }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :birth_date, presence: true
  validates :password, presence: true
  validates :password, length: { minimum: 6 },
                       format: { with: /.*(\d.*[A-Z]|[A-Z].*\d).*/}
  validates :postal_code, format: { with: /\A\d{5}\z/ }
  validates :street_address, presence: true
  validates :city, presence: true

  def get_enrollment_data_for_event(id)
    e = enrollments.find_by event_id: id
    e.enrollment_datas.where.not(attribute_index: nil).order('attribute_index asc')
  end

  def find_enrollment_id_by_event(id)
    id = enrollments.find_by(event_id: id).id
  end

  def address
    street_address + ' ' + postal_code + ', ' + city
  end

  def full_name
    first_name + ' ' + last_name
  end

  def define_series
    age = Date.today.year - birth_date.year
    str = gender
    if age < 22
      str += 'AL22'
    elsif age < 40

    elsif age < 50
      str += '40'
    elsif age < 55
      str += '50'
    elsif age < 60
      str += '55'
    elsif age < 65
      str += '60'
    elsif age < 70
      str += '65'
    elsif age < 75
      str += '70'
    else
      str += '75'
    end
    str
  end
 end
