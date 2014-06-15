class CreateEnrollmentData < ActiveRecord::Migration
  def change
    create_table :enrollment_data do |t|
      t.integer :enrollment_id
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
