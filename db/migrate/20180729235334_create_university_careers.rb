class CreateUniversityCareers < ActiveRecord::Migration[5.2]
  def change
    create_table :university_careers do |t|

      t.timestamps
    end
  end
end
