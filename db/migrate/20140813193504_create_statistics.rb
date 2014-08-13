class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :kk_number
      t.integer :user_id
      t.string :last_name
      t.string :first_name
      t.string :city
      t.integer :birth_year
      t.integer :six_events_completed_count
      t.integer :five_events_completed_count
      t.integer :four_events_completed_count
      t.integer :total_events_completed
      t.decimal :pts_sum
      t.integer :position
      t.string :p
      t.string :r
      t.integer :a
      t.string :ap
      t.integer :k
      t.integer :v

      t.timestamps
    end
  end
end
