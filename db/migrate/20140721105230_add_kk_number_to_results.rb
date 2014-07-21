class AddKkNumberToResults < ActiveRecord::Migration
  def change
    add_column :results, :kk_number, :integer
  end
end
