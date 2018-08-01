class AddColumnsIdeaModel < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :nombre, :string
    add_column :ideas, :descripcion, :text
  end
end
