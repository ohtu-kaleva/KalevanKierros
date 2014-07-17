class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :name
      t.string :city
      t.string :group
      t.integer :year
      t.string :series
      t.decimal :orienteering_pts
      t.decimal :skiing_pts
      t.decimal :marathon_pts
      t.decimal :rowing_pts
      t.decimal :cycling_pts
      t.decimal :skating_pts
      t.decimal :orienteering_time
      t.decimal :skiing_time
      t.decimal :marathon_time
      t.decimal :rowing_time
      t.decimal :cycling_time
      t.decimal :skating_time
      t.integer :orienteering_pos
      t.integer :skiing_pos
      t.integer :marathon_pos
      t.integer :rowing_pos
      t.integer :cycling_pos
      t.integer :skating_pos
      t.string :marathon_style
      t.string :rowing_style
      t.string :skiing_style
      t.decimal :pts_sum
      t.integer :completed_events

      t.timestamps
    end
  end
end
