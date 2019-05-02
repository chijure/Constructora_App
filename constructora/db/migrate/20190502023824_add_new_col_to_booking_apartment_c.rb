class AddNewColToBookingApartmentC < ActiveRecord::Migration[5.2]
  def change
  	add_foreign_key :project_apartments, :apartment_bookings
  end
end
