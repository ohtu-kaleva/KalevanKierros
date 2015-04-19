class User < ActiveRecord::Base
  has_secure_password
  has_many :enrollments, dependent: :destroy
  has_many :events, through: :enrollments
  has_one :kk_enrollment
  has_one :statistic
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
    enrollment = enrollments.find_by event_id: id
    if enrollment
      enrollment.enrollment_datas.where.not(attribute_index: nil).order('attribute_index asc')
    else
      return EnrollmentData.none
    end
  end

  def find_enrollment_id_by_event(id)
    id = enrollments.find_by(event_id: id)
    if id
      id.id
    else
      nil
    end
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

  def generate_activation_token
    self.activation_token = SecureRandom.urlsafe_base64
  end

  def generate_reset_token
    self.update_attribute :reset_token, SecureRandom.urlsafe_base64
  end

  def set_reset_time
    self.update_attribute :reset_sent_at, DateTime.now
  end

  def construct_reference_number
    number = (kk_number.to_s).split ''
    if number.count < 7 || number.count > 7
      return 'virhe viitenumerossa'
    end
    number.reverse!
    sum = 0
    sum = sum + number[0].to_i * 7
    sum = sum + number[1].to_i * 3
    sum = sum + number[2].to_i * 1
    sum = sum + number[3].to_i * 7
    sum = sum + number[4].to_i * 3
    sum = sum + number[5].to_i * 1
    sum = sum + number[6].to_i * 7
    next_ten = (sum / 10).round * 10 + 10
    check_sum = next_ten - sum
    if check_sum == 10
      check_sum = 0
    end
    return kk_number.to_s.concat(check_sum.to_s)
  end
 end
