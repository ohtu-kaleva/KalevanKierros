class AddSecondPaymentValueToEventAttributes < ActiveRecord::Migration
  def change
    add_column :event_attributes, :second_payment_value, :string, default: ''
  end
end