class CreateProjectApTypePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :project_ap_type_prices do |t|
      t.references :project_apartment_type, foreign_key: true
      t.date :RegisterDate
      t.integer :ValidFor
      t.float :PercentageDiscount
      t.integer :Floor
      t.float :Price
      t.boolean :IsActive

      t.timestamps
    end
  end
end
