class RelationBetweenFacultyU < ActiveRecord::Migration[5.2]
  def change
    add_reference :careers, :faculty, index:true
  end
end
