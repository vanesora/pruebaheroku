class RelationBetweenActivityGroup < ActiveRecord::Migration[5.2]
  def change
    add_reference :activity_groups, :activity, index: true
    add_reference :activity_groups, :group, index: true
  end
end
