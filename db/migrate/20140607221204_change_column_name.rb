class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :event_attributes, :attributetype, :attribute_type
  end
end
