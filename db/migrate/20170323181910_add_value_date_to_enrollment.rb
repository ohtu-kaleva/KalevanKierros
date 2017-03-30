class AddValueDateToEnrollment < ActiveRecord::Migration
  def change
    add_column :enrollments, :value_date, :date
  end
end
