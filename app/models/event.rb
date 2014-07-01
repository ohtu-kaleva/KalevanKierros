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

  def to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << [name]
      csv << csv_headers
      participants.each do |p|
        csv << enrollment_data_as_array(p)
      end
    end
  end

  def csv_headers
    attr_names = ["Etunimi", "Sukunimi", "Sähköposti", "Kieräjänumero"]
    event_attributes.each do |attr|
      attr_names.append attr.name
    end
    attr_names
  end

  def enrollment_data_as_array(p)
    user_data = p.get_enrollment_data_for_event(id)
    data_array = [p.first_name, p.last_name, p.email, p.kk_number]
    user_data.each do |piece|
      data_array.append piece.value
    end
    data_array
  end
end
