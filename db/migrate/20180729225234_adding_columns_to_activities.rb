class AddingColumnsToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :nombre, :string
    add_column :activities, :descripcion, :string
    add_column :activities, :lugar, :string
    add_column :activities, :fase, :integer

  end
end
