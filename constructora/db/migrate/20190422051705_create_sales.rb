class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :apartment_type, foreign_key: true
      t.references :apartment_booking, foreign_key: true
      t.references :bank, foreign_key: true
      t.date :SaleDate
      t.integer :PaymentType
      t.float :CashAmount
      t.float :FinancedAmount
      t.boolean :IsActive

      t.timestamps
    end
  end
end
