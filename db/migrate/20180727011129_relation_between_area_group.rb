class RelationBetweenAreaGroup < ActiveRecord::Migration[5.2]
  def change
    add_reference :groups, :area, index: true
  end
end
