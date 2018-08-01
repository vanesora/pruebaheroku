class AddingColumnsToCareers < ActiveRecord::Migration[5.2]
  def change
    add_column :careers, :nombre, :string
    add_column :careers, :descripcion, :text
  end
end
