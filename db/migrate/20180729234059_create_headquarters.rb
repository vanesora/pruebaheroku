class CreateHeadquarters < ActiveRecord::Migration[5.2]
  def change
    create_table :headquarters do |t|

      t.timestamps
    end
  end
end
