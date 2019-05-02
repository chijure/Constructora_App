class AddNewColToBookingApartmentD < ActiveRecord::Migration[5.2]
  def change
  	add_reference :apartment_bookings, :project_apartment, foreign_key: true
  end
end
