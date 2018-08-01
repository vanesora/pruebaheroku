class RelationBetweenAreasIdeas < ActiveRecord::Migration[5.2]
  def change
    add_reference :ideas, :area, index: true
  end
end
