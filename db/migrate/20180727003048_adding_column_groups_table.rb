class AddingColumnGroupsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :nombre, :string
  end
end
