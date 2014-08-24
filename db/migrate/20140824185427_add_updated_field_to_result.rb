class AddUpdatedFieldToResult < ActiveRecord::Migration
  def change
    add_column :results, :updated_to_statistics, :boolean, default: false, null: false
  end
end
