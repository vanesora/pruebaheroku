class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :contrasena
      t.string :email
      t.timestamps
    end
  end
end
