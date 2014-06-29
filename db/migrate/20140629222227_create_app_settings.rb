class CreateAppSettings < ActiveRecord::Migration
  def change
    create_table :app_settings do |t|
      t.string :name, null: false
      t.string :value, null: false
      t.timestamps
    end
  end
end
