class CreateCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :careers do |t|

      t.timestamps
    end
  end
end
