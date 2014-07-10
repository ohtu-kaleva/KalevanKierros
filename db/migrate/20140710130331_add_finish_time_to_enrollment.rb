class AddFinishTimeToEnrollment < ActiveRecord::Migration
  def change
    add_column :enrollments, :time, :decimal
  end
end
