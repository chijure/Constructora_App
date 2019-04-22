class CreateApartmentBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :apartment_bookings do |t|
      t.string :IdApartmentBooking
      t.string :IdQuotation
      t.string :IdClient
      t.string :IdBank
      t.date :BookingDate
      t.float :BookPrice
      t.string :VoucherNumber
      t.boolean :IsActive

      t.timestamps
    end
  end
end
