class RemoveColToBookingApartment < ActiveRecord::Migration[5.2]
  def change
    remove_reference :apartment_bookings, :project_apartment, foreign_key: true  	
  end
end
