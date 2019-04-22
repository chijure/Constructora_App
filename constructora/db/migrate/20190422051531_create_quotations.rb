class CreateQuotations < ActiveRecord::Migration[5.2]
  def change
    create_table :quotations do |t|
      t.references :request_quotation, foreign_key: true
      t.references :client, foreign_key: true
      t.date :QuotationDate
      t.float :Price
      t.integer :ValidFor
      t.integer :Status

      t.timestamps
    end
  end
end
