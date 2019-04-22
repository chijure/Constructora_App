class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :IdAppointment
      t.string :IdRequestQuotation
      t.datetime :AppointmentDate
      t.boolean :IsAttended

      t.timestamps
    end
  end
end
