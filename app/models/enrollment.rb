class Enrollment < ActiveRecord::Base
  belongs_to :event
  belongs_to :user
  has_many :enrollment_datas, dependent: :destroy

  def update_payments
    if self.event.sport_type == "RowingEvent" and self.enrollment_datas.find_by(name: 'Tyyli').value == "Vuoro"
      venekunta = self.enrollment_datas.find_by(name: 'Venekunta').value
      pair = self.event.enrollment_datas.where(name: 'Venekunta').where(value: venekunta)
      pair.each do |data|
        enrollment = data.enrollment
        if enrollment.paid
          enrollment.update_attribute :paid, false
        else
          enrollment.update_attribute :paid, true
        end
      end
    else
      if self.paid
        self.update_attribute :paid, false
      else
        self.update_attribute :paid, true
      end
    end
  end

  def construct_reference_number
    factors = [7, 3, 1]
    kk_number = self.user.kk_number.to_s
    event_id = self.event.id.to_s
    numberstr = "#{kk_number}#{event_id}".reverse.split('')
    factor_counter = 0
    sum = 0
    numberstr.each do |n|
      sum += n.to_i * factors[factor_counter]
      factor_counter += 1
      if factor_counter > 2
        factor_counter = 0
      end
    end
    next_ten = (sum / 10).round * 10 + 10
    check_sum = next_ten - sum
    if check_sum == 10
      check_sum = 0
    end
    "#{kk_number}#{event_id}#{check_sum}"
  end

  def calculate_price
    price = 0

    if self.created_at <= self.event.end_date
      if self.event.price
        price = price + self.event.price
      end
      self.event.event_attributes.each do |a|
        if a.attribute_type.in? ['radio_button', 'select']
          selection = a.attribute_value.split(';')
          prices = a.payment_value.split(';')
          selected = self.enrollment_datas.find_by(attribute_index: a.attribute_index).value
          price = price + prices[selection.index(selected)].to_i
        elsif a.attribute_type == 'check_box'
          if self.enrollment_datas.find_by(attribute_index: a.attribute_index).value != ""
            price = price + a.payment_value.to_i
          end
        end
      end
      price = price/100.0

    else
      if self.event.second_price
        price = price + self.event.second_price
      end
      self.event.event_attributes.each do |a|
        if a.attribute_type.in? ['radio_button', 'select']
          selection = a.attribute_value.split(';')
          prices = a.second_payment_value.split(';')
          selected = self.enrollment_datas.find_by(attribute_index: a.attribute_index).value
          price = price + prices[selection.index(selected)].to_i
        elsif a.attribute_type == 'check_box'
          if self.enrollment_datas.find_by(attribute_index: a.attribute_index).value != ""
            price = price + a.second_payment_value.to_i
          end
        end
      end
      price = price/100.0
    end
    price
  end
end