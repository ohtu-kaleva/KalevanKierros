class AddAttributeIndexToEventAttribute < ActiveRecord::Migration
  def change
    add_column :event_attributes, :attribute_index, :integer
  end
end
