class AddValueDateToRelayGroup < ActiveRecord::Migration
  def change
    add_column :relay_groups, :value_date, :date
  end
end
