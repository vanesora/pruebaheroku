class AddingColumnsToUniversities < ActiveRecord::Migration[5.2]
  def change
    add_column :universities, :nombre, :string
    add_column :universities, :mision, :text
    add_column :universities, :vision, :text
    add_column :universities, :web, :text

  end
end
