class CreateRelayGroups < ActiveRecord::Migration
  def change
    create_table :relay_groups do |t|
      t.string :name
      t.timestamps
    end
  end
end
