class AddPaidToEnrollments < ActiveRecord::Migration
  def change
    add_column :enrollments, :paid, :boolean, null: false, default: false
  end
end
