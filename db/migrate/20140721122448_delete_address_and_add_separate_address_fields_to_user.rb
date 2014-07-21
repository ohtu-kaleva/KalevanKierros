class DeleteAddressAndAddSeparateAddressFieldsToUser < ActiveRecord::Migration
  def change
    remove_column :users, :address
    add_column :users, :city, :string
    add_column :users, :postal_code, :string
    add_column :users, :street_address, :string
  end
end
