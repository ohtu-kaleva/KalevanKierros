class AddAnotherPenaltyFieldToEvent < ActiveRecord::Migration
  def change
    add_column :events, :rowing_penalty, :decimal, default: 12.0
  end
end
