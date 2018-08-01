class RelationBetweenUniversitiesGroups < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :university, index:true
  end
end
