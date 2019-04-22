class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :request_quotation, foreign_key: true
      t.datetime :AppointmentDate
      t.boolean :IsAttended

      t.timestamps
    end
  end
end
