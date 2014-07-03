require 'spec_helper'

describe Event do
  describe 'is valid' do
    it 'with proper parameters' do
      event = Event.new name: 'TestiEvent', start_date: Date.today,
                        end_date: Date.today + 2.days, second_end_date: Date.today + 4.days,
                        price: 1000, second_price: 2000
      expect(event).to be_valid
    end

    it 'with present dates' do
      event = Event.new name: 'TestiEvent', start_date: Date.today,
                        end_date: Date.today, second_end_date: Date.today + 4.days,
                        price: 1000, second_price: 2000
      expect(event).to be_valid
    end

    it 'with future dates' do
      event = Event.new name: 'TestiEvent', start_date: Date.today + 1.day,
                        end_date: Date.today + 3.days, second_end_date: Date.today + 4.days,
                        price: 1000, second_price: 2000
      expect(event).to be_valid
    end
  end

  describe 'is invalid' do
    it 'without name' do
      event = Event.new start_date: Date.yesterday, end_date: Date.today + 3.days
      expect(event).to be_invalid
    end

    it 'without start date' do
      event = Event.new name: 'TestiEvent', end_date: Date.tomorrow
      expect(event).to be_invalid
    end

    it 'without end date' do
      event = Event.new name: 'TestiEvent', start_date: Date.today
      expect(event).to be_invalid
    end

    context 'if end date' do
      it 'is in past' do
        event = Event.new name: 'TestiEvent', start_date: Date.today - 3.days,
                          end_date: Date.yesterday
        expect(event).to be_invalid
      end

      it 'is earlier than start date' do
        event = Event.new name: 'TestiEvent', start_date: Date.tomorrow + 3.day,
                          end_date: Date.tomorrow
        expect(event).to be_invalid
      end
    end

    it 'if name is not unique' do
      first_event = Event.new name: 'TestiEvent', start_date: Date.today,
                              end_date: Date.today + 2.days, second_end_date: Date.today + 4.days,
                              price: 1000, second_price: 2000
      first_event.save
      second_event = Event.new name: 'TestiEvent', start_date: Date.today + 5.days,
                        end_date: Date.today + 7.days, second_end_date: Date.today + 4.days,
                        price: 1000, second_price: 2000

      expect(first_event).to be_valid
      expect(second_event).to be_invalid
    end
  end
end
