class AddDefaultValuesToResult < ActiveRecord::Migration
  def change
    change_column :results, :completed_events, :integer, null: false, default: 0
    change_column :results, :pts_sum, :decimal, null: false, default: 0.0
    change_column :results, :kk_number, :integer, null: false
  end
end
