class ChangeCItyIdColumnToClient < ActiveRecord::Migration[5.2]
  def change
  	add_foreign_key :apartment_bookings, :project_apartments, column: :project_apartment_id
  end
end
