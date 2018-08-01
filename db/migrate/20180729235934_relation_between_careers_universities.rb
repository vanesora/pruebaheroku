class RelationBetweenCareersUniversities < ActiveRecord::Migration[5.2]
  def change
    add_reference :university_careers, :university, index: true
    add_reference :university_careers, :career, index: true
    
  end
end
