class AddPaymentValueToEventAttributes < ActiveRecord::Migration
  def change
    add_column :event_attributes, :payment_value, :string, default: ''
  end
end