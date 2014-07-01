class Event < ActiveRecord::Base
  has_many :event_attributes, dependent: :destroy
  has_many :enrollments, dependent: :destroy
  has_many :participants, through: :enrollments, source: :user

  validates :name, :start_date, :end_date, presence: true
  validates :name, uniqueness: true
  validate :validate_end_date



  def validate_end_date
    if start_date && end_date
      return if end_date >= Date.today && end_date >= start_date
    end

    errors.add(:end_date, 'is invalid')
  end
end
