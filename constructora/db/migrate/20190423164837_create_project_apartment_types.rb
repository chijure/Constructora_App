class CreateProjectApartmentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :project_apartment_types do |t|
      t.references :project, foreign_key: true
      t.references :apartment_type, foreign_key: true
      t.float :Area
      t.integer :Floor
      t.integer :Quantity
      t.boolean :IsActive

      t.timestamps
    end
  end
end
