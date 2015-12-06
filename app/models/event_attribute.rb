class EventAttribute < ActiveRecord::Base
  belongs_to :event
  validates :attribute_type, :name, :attribute_label, presence: true,
                             allow_blank: false
  validate :attribute_type_allowed
  validate :correct_payment_values

  def get_options_to_form
    attribute_value.split(';')
  end

  def attribute_type_allowed
    return if attribute_type.in? ['radio_button', 'check_box', 'text_field',
                                  'select', 'plain_text', 'date', 'hidden',]

    errors.add(:attribute_type, 'is invalid')
  end

  def correct_payment_values
    num_values = attribute_value.split(';').length
    if payment_value != "" and payment_value.split(';').length != num_values
      errors.add(:payment_value, 'Jokaista vaihtoehto kohti tulee antaa hinta tai listan tulee olla tyhjä.')
    end
    if second_payment_value != "" and second_payment_value.split(';').length != num_values
      errors.add(:second_payment_value, 'Jokaista vaihtoehto kohti tulee antaa hinta tai listan tulee olla tyhjä.')
    end
    payment_value.split(';').each do |v|
      if not is_integer? v
        errors.add(:payment_value, 'Hinnan tulee olla sentteinä.')
        break
      end
    end
    second_payment_value.split(';').each do |v|
      if not is_integer? v
        errors.add(:second_payment_value, 'Hinnan tulee olla sentteinä.')
        break
      end
    end
  end

  def is_integer? string
    true if Integer(string) rescue false
  end
end