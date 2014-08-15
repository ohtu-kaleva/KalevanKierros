class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :kk_number
      t.integer :user_id
      t.string :last_name
      t.string :first_name
      t.string :city
      t.integer :birth_year
      t.integer :six_events_completed_count, default: 0
      t.integer :five_events_completed_count, default: 0
      t.integer :four_events_completed_count, default: 0
      t.integer :total_events_completed, default: 0
      t.decimal :pts_sum, default: 0.0
      t.integer :position, default: 0
      t.string :p, default: nil
      t.string :r, default: nil
      t.integer :a, default: 0
      t.string :ap, default: nil
      t.integer :k, default: 0
      t.integer :v, default: 0

      t.timestamps
    end
  end
end
