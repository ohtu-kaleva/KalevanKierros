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
        enrollment.update_attribute :paid, true
      end
    else    
      self.update_attribute :paid, true
    end
  end
end
