class AddAccountNumberToEvents < ActiveRecord::Migration
  def change
    add_column :events, :account_number, :string
  end
end
