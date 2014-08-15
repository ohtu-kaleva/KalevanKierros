class AddIndexes < ActiveRecord::Migration
  def change
    add_index :enrollment_data, :enrollment_id
    add_index :enrollments, :event_id
    add_index :enrollments, :user_id
    add_index :event_attributes, :event_id
    add_index :statistics, :user_id
    add_index :statistics, :kk_number
  end
end
