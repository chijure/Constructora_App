json.extract! appointment, :id, :IdAppointment, :IdRequestQuotation, :AppointmentDate, :IsAttended, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
