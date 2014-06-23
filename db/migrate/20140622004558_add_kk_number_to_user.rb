class AddKkNumberToUser < ActiveRecord::Migration
  def change
    add_column :users, :kk_number, :integer
    add_index :users, :kk_number, unique: true
  end
end
