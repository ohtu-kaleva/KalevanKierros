class CreateKkEnrollments < ActiveRecord::Migration
  def change
    create_table :kk_enrollments do |t|
      t.integer :user_id
      t.boolean :paid, null: false, default: false

      t.timestamps
    end
  end
end
