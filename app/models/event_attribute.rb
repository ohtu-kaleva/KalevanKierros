class EventAttribute < ActiveRecord::Base
  belongs_to :event

  def get_options_to_form(values)
    values.split(':')
  end
end
