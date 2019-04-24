class CreateProjectApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :project_apartments do |t|
      t.references :project, foreign_key: true
      t.references :project_apartment_type, foreign_key: true
      t.string :Number
      t.string :Description
      t.string :Picture
      t.integer :Status

      t.timestamps
    end
  end
end
