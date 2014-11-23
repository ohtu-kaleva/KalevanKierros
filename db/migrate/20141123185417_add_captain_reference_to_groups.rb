class AddCaptainReferenceToGroups < ActiveRecord::Migration
  def change
    add_reference :groups, :user
  end
end
