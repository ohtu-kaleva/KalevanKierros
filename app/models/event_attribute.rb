class EventAttribute < ActiveRecord::Base
  belongs_to :event

  def get_options_to_form
    attribute_value.split(';')
  end
end
