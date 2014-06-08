require 'spec_helper'

describe EventAttribute do
  let(:event) { Event.new name: 'Testitapahtuma', start_date: Date.today,
                end_date: Date.tomorrow }


  it 'returns right values for form' do
    event_attribute = EventAttribute.new event_id: event.id, attribute_type: 'select',
                                         attribute_value: 'testi1;testi2;testi3',
                                         name: 'Osoitetiedot',
                                         attribute_label: 'Katuosoite'

    attributes = event_attribute.get_options_to_form
    expect(attributes).to eq(%w(testi1 testi2 testi3))
  end

  context 'is invalid' do
    it 'with invalid attribute type' do
      event_attribute = EventAttribute.new event_id: event.id, attribute_type: 'aoeu',
                                           attribute_value: 'testi1',
                                           name: 'Osoitetiedot',
                                           attribute_label: 'Katuosoite'
      expect(event_attribute).to be_invalid
    end
  end

  context 'is valid' do
    it 'with all valid attribute types' do
      %w(radio_button check_box text_field select plain_text).each do |type|
        event_attribute = EventAttribute.new event_id: event.id,
                                             attribute_type: type,
                                             attribute_value: 'testi',
                                             name: 'osoite:',
                                             attribute_label: 'Osoitetiedot'

        expect(event_attribute).to be_valid
      end
    end
  end
end
