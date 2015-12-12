class AddDefaultValuesForEventPrices < ActiveRecord::Migration
  def change
    change_column :events, :price, :integer, default: 0
    change_column :events, :second_price, :integer, default: 0
  end
end