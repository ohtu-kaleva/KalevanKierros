class AddPostEnrollmentDeadlineAndPriceFieldsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :second_end_date, :date
    add_column :events, :price, :integer
    add_column :events, :second_price, :integer
  end
end
