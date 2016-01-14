class ChangeKkEnrollmentPaidField < ActiveRecord::Migration
  def change
    change_column :kk_enrollments, :paid, :integer, null: 0, default: 0
  end
end