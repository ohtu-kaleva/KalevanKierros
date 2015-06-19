class Event < ActiveRecord::Base
  has_many :event_attributes, dependent: :destroy
  has_many :enrollments, dependent: :destroy
  has_many :participants, through: :enrollments, source: :user

  validates :name, :start_date, :end_date, :second_end_date, :price, :second_price, :payment_receiver, presence: true
  validates :name, uniqueness: true
  validate :validate_end_date
  validate :validate_second_end_date
  validate :validate_account_number

  def validate_end_date
    if start_date && end_date
      return if end_date >= Date.today && end_date >= start_date
    end

    errors.add(:end_date, 'is invalid')
  end

  def validate_account_number
    if account_number
      return if /[a-zA-Z]{2}[0-9]{2}[a-zA-Z0-9]{4}[0-9]{7}([a-zA-Z0-9]?){0,16}/ === account_number.gsub(/\s+/,'') || account_number.empty?
    end
    errors.add(:account_number, 'is invalid')
  end

  def validate_second_end_date
    if start_date && end_date && second_end_date
      return if second_end_date >= Date.today && second_end_date >= start_date && second_end_date >= end_date
    end

    errors.add(:second_end_date, 'is invalid')
  end

  def to_csv(options = {})
    if sport_type == 'RowingEvent'
      contestants = participating_boats
    else
      contestants = participants
    end
    CSV.generate(options) do |csv|
      csv << spreadsheet_headers
      contestants.each do |participant|
        csv << enrollment_data_as_array(participant)
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

  def participating_boats
    participant_boats = []
    pair_boats = {}
    enrollments.each do |e|
      venekunta = e.enrollment_datas.find_by name:'Venekunta'
      if not venekunta
        participant_boats.append(e.user)   
      elsif pair_boats.has_key?(venekunta.value)
        pair_boats[venekunta.value].append(e.user)
      else
        pair_boats[venekunta.value] = [e.user]
      end
    end
    pair_boats.each do |k, v|
      participant_boats.append(v.first)
    end
    participant_boats
  end

  def spreadsheet_headers
    attr_names = ["ilm_nro", "Etunimi", "Sukunimi", "Sähköposti", "KK-numero"]
    event_attributes.where.not(attribute_index: nil).order('attribute_index asc').each do |attr|
      attr_names.append attr.name
    end
    attr_names.append 'Aika'
  end

  def enrollment_data_as_array(user)
    user_data = user.get_enrollment_data_for_event(id)
    data_array = [user.find_enrollment_id_by_event(id), user.first_name, user.last_name, user.email, user.kk_number]
    i = 0
    user_data.each do |piece|
      if piece.attribute_index > i + 1
        missing = piece.attribute_index - i - 1
        missing.times do
          data_array.append ''
          i += 1
        end
      end
      data_array.append piece.value
      i += 1
    end
    data_array
  end

  def to_autocomplete
    rtrn = []
    participants.select("kk_number || ' ' || first_name || ' ' || last_name as label, kk_number as value").each do |p|
      rtrn.append p
    end
    rtrn.to_json(:only => [:label, :value])
  end

end
