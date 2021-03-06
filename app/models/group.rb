class Group < ActiveRecord::Base
  has_many :users
  belongs_to :user
  validates :name, uniqueness: true
  validates :user_id, presence: true
end
