class ChangeResultRelaySportPrecisions < ActiveRecord::Migration
  def change
    change_column :results, :orienteering_relay_pts, :decimal, precision: 16, scale: 6
    change_column :results, :skiing_relay_pts, :decimal, precision: 16, scale: 6
    change_column :results, :marathon_relay_pts, :decimal, precision: 16, scale: 6
    change_column :results, :cycling_relay_pts, :decimal, precision: 16, scale: 6
    change_column :results, :skating_relay_pts, :decimal, precision: 16, scale: 6
    change_column :results, :rowing_relay_pts, :decimal, precision: 16, scale: 6
  end
end
