class AddingColumnsToHeadquarters < ActiveRecord::Migration[5.2]
  def change
    add_column :headquarters, :nombre, :string
    add_column :headquarters, :direccion, :string
    add_column :headquarters, :telefono, :string

  end
end
