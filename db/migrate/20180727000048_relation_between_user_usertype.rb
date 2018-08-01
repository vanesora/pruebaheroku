class RelationBetweenUserUsertype < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :usertype, index: true
  end
end
