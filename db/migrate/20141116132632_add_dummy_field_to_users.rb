class AddDummyFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dummy, :boolean, default: false, null: false
  end
end
