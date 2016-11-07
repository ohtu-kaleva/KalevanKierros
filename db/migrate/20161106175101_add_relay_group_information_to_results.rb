class AddRelayGroupInformationToResults < ActiveRecord::Migration
  def change
    add_column :results, :relay_group, :string
    add_column :results, :ignore_on_statistics, :boolean, null: false, default: false
  end
end
