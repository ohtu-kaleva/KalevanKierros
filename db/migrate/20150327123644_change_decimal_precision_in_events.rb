class ChangeDecimalPrecisionInEvents < ActiveRecord::Migration
  def change
    change_column :events, :penalty_factor, :decimal, :precision => 16, :scale => 6
    change_column :events, :rowing_penalty, :decimal, :precision => 16, :scale => 6
  end
end
