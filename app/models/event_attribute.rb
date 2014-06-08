class EventAttribute < ActiveRecord::Base
  belongs_to :event
  validates :attribute_type, :name, :attribute_label, presence: true
  validate :attribute_type_allowed

  def get_options_to_form
    attribute_value.split(';')
  end

  def attribute_type_allowed
    return if attribute_type.in? ['radio_button', 'check_box', 'text_field',
                                  'select', 'plain_text']

    errors.add(:attribute_type, 'is invalid')
  end
end
