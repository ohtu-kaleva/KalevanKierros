class Uutiset < ApplicationRecord
  validates :title, presence: true
  def to_param
    "#{id} #{title}".parameterize
  end
end
