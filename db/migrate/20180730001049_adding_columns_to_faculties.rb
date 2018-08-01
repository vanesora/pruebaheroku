class AddingColumnsToFaculties < ActiveRecord::Migration[5.2]
  def change
    add_column :faculties, :nombre, :string
    add_column :faculties, :descripcion, :text
  end
end
