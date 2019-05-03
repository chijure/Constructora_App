class RemoveBookingReferenceFromSale < ActiveRecord::Migration[5.2]
  def change
    remove_reference :sales, :apartment_booking, index: true, foreign_key: true
  end
end
