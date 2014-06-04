class User < ActiveRecord::Base
  has_secure_password

  validates :username, uniqueness: true, length: { minimum: 3 }
  validates :first_name, presence: true
  validates :last_name, presence: true

end
