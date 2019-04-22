class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.string :IdQuotation
      t.string :IdRequestQuotation
      t.date :QuotationDate
      t.float :Price
      t.integer :ValidFor
      t.integer :Status

      t.timestamps
    end
  end
end
