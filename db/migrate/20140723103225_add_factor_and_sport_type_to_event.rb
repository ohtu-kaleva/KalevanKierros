class AddFactorAndSportTypeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :penalty_factor, :decimal, default: 1
    add_column :events, :factor, :integer
    add_column :events, :sport_type, :string
  end
end
