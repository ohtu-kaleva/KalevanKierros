class AddNameAndLabelToEventAttribute < ActiveRecord::Migration
  def change
    add_column :event_attributes, :name, :string
    add_column :event_attributes, :attribute_label, :string
  end
end
