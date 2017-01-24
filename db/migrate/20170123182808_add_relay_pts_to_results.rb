class AddRelayPtsToResults < ActiveRecord::Migration
  def change
    add_column :results, :orienteering_relay_pts, :decimal
    add_column :results, :skiing_relay_pts, :decimal
    add_column :results, :marathon_relay_pts, :decimal
    add_column :results, :rowing_relay_pts, :decimal
    add_column :results, :cycling_relay_pts, :decimal
    add_column :results, :skating_relay_pts, :decimal
    add_column :results, :orienteering_relay_pos, :integer
    add_column :results, :skiing_relay_pos, :integer
    add_column :results, :marathon_relay_pos, :integer
    add_column :results, :rowing_relay_pos, :integer
    add_column :results, :cycling_relay_pos, :integer
    add_column :results, :skating_relay_pos, :integer
    add_column :results, :relay_pts_sum, :decimal
  end
end
