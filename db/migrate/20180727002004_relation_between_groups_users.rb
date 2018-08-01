class RelationBetweenGroupsUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_groups, :group, index: true 
    add_reference :user_groups, :user, index: true
  end
end
