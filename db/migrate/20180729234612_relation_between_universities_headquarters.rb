class RelationBetweenUniversitiesHeadquarters < ActiveRecord::Migration[5.2]
  def change
    add_reference :headquarters, :university, index: true
  end
end
