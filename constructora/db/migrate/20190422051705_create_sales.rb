class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :IdSale
      t.string :IdApartmentType
      t.string :IdApartmentBooking
      t.string :IdBank
      t.date :SaleDate
      t.integer :PaymentType
      t.float :CashAmount
      t.float :FinancedAmount
      t.boolean :IsActive

      t.timestamps
    end
  end
end
