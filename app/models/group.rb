class Group < ActiveRecord::Base
  has_many :users
  validates :name, uniqueness: true
end
