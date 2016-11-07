class AddPaidToRelayGroups < ActiveRecord::Migration
  def change
    add_column :relay_groups, :paid, :integer, null: 0, default: 0
  end
end
