class AddPrevYearPtsSumAndPrevYearEventSumToStatistics < ActiveRecord::Migration
  def change
    add_column :statistics, :prev_year_pts_sum, :decimal, default: 0.0
    add_column :statistics, :prev_year_event_sum, :integer, default: 0
  end
end
