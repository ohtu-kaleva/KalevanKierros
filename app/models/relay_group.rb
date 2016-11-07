class RelayGroup < ActiveRecord::Base
  has_many :users
  belongs_to :user
  validates :name, uniqueness: true
  validates :user_id, presence: true

  def construct_reference_number
    factors = [7, 3, 1]
    kk_number = self.user.kk_number.to_s
    relay_start_number = "99"
    numberstr = "#{relay_start_number}#{kk_number}".reverse.split('')
    factor_counter = 0
    sum = 0
    numberstr.each do |n|
      sum += n.to_i * factors[factor_counter]
      factor_counter += 1
      if factor_counter > 2
        factor_counter = 0
      end
    end
    next_ten = (sum / 10).round * 10 + 10
    check_sum = next_ten - sum
    if check_sum == 10
      check_sum = 0
    end
    "#{relay_start_number}#{kk_number}#{check_sum}"
  end
end
