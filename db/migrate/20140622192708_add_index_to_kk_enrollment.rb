class AddIndexToKkEnrollment < ActiveRecord::Migration
  def change
    add_index :kk_enrollments, :user_id, unique: true
  end
end
