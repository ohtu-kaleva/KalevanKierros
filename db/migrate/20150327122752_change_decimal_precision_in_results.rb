class ChangeDecimalPrecisionInResults < ActiveRecord::Migration
  def change
    change_column :results, :orienteering_pts, :decimal, :precision => 16, :scale => 6
    change_column :results, :skiing_pts, :decimal, :precision => 16, :scale => 6
    change_column :results, :marathon_pts, :decimal, :precision => 16, :scale => 6
    change_column :results, :cycling_pts, :decimal, :precision => 16, :scale => 6
    change_column :results, :skating_pts, :decimal, :precision => 16, :scale => 6
    change_column :results, :rowing_pts, :decimal, :precision => 16, :scale => 6
    change_column :results, :pts_sum, :decimal, :precision => 16, :scale => 6
    change_column :results, :orienteering_time, :decimal, :precision => 16, :scale => 6
    change_column :results, :skiing_time, :decimal, :precision => 16, :scale => 6
    change_column :results, :marathon_time, :decimal, :precision => 16, :scale => 6
    change_column :results, :cycling_time, :decimal, :precision => 16, :scale => 6
    change_column :results, :skating_time, :decimal, :precision => 16, :scale => 6
    change_column :results, :rowing_time, :decimal, :precision => 16, :scale => 6
  end
end
