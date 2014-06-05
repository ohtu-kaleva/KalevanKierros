class CreateEventAttributes < ActiveRecord::Migration
  def change
    create_table :event_attributes do |t|
      t.integer :event_id
      t.string :attributetype
      t.string :attribute_value

      t.timestamps
    end
  end
end
