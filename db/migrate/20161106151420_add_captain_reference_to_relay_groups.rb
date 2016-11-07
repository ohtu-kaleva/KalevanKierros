class AddCaptainReferenceToRelayGroups < ActiveRecord::Migration
  def change
    add_reference :relay_groups, :user
  end
end
