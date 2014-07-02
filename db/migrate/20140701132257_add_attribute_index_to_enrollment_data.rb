class AddAttributeIndexToEnrollmentData < ActiveRecord::Migration
  def change
    add_column :enrollment_data, :attribute_index, :integer
  end
end
