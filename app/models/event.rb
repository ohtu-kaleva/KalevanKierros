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
      csv << spreadsheet_headers
      participants.each do |p|
        csv << enrollment_data_as_array(p)
      end
    end
  end

  def to_xlsx
    Axlsx::Package.new do |enrollments|
      enrollments.workbook do |wb|
        wb.add_worksheet do |sheet|
          sheet.add_row
          sheet.add_row [name]
          sheet.add_row spreadsheet_headers
          participants.each do |user|
            sheet.add_row enrollment_data_as_array(user)
          end
        end
      end
    end
  end

  def spreadsheet_headers
    attr_names = ["Etunimi", "Sukunimi", "Sähköposti", "Kiertäjänumero"]
    event_attributes.sort_by{|attribute_index|}.each do |attr|
      attr_names.append attr.name
    end
    attr_names
  end

  def enrollment_data_as_array(p)
    user_data = p.get_enrollment_data_for_event(id).sort_by { |attribute_index| }
    data_array = [p.first_name, p.last_name, p.email, p.kk_number]
    user_data.each do |piece|
      data_array.append piece.value
    end
    data_array
  end
end
