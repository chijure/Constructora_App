class CreateApartmentBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :apartment_bookings do |t|
      t.references :quotation, foreign_key: true
      t.references :client, foreign_key: true
      t.references :bank, foreign_key: true
      t.date :BookingDate
      t.float :BookPrice
      t.string :VoucherNumber
      t.boolean :IsActive

      t.timestamps
    end
  end
end
