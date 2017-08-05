class AddRemovedToEventAttribute < ActiveRecord::Migration
  def change
    add_column :event_attributes, :removed, :boolean, null: false, default: false
  end
end
