class CreateActivityGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_groups do |t|

      t.timestamps
    end
  end
end
