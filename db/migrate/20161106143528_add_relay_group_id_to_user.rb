class AddRelayGroupIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :relay_group_id, :integer
  end
end
