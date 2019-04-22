class CreateApartmentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :apartment_types do |t|
      t.references :project, foreign_key: true
      t.string :Name
      t.integer :Quantity
      t.integer :Available
      t.integer :Sold
      t.float :BasePrice
      t.float :Area
      t.integer :Status

      t.timestamps
    end
  end
end
