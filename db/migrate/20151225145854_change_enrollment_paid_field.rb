class ChangeEnrollmentPaidField < ActiveRecord::Migration
  def change
    change_column :enrollments, :paid, :integer, null: 0, default: 0
  end
end