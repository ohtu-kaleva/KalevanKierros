class AddOpenAttributeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :open, :boolean, null: false, default: false
  end
end
