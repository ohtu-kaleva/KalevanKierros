class AddValueDateToKkEnrollment < ActiveRecord::Migration
  def change
    add_column :kk_enrollments, :value_date, :date
  end
end
