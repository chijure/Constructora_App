class CreateApartmentTypePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :apartment_type_prices do |t|
      t.references :apartment_type, foreign_key: true
      t.datetime :RegisterDate
      t.integer :ValidFor
      t.float :PercentajeDiscount
      t.integer :Floor
      t.float :FinalPrice
      t.boolean :IsActive

      t.timestamps
    end
  end
end
