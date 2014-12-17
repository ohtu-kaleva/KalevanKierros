class DeleteRFromStatistics < ActiveRecord::Migration
  def change
    remove_column :statistics, :r
  end
end
