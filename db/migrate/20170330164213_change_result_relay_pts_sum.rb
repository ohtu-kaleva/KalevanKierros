class ChangeResultRelayPtsSum < ActiveRecord::Migration
  def change
    change_column :results, :relay_pts_sum, :decimal, precision: 16, scale: 6
  end
end
