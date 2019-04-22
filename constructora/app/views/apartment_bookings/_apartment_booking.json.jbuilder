json.extract! apartment_booking, :id, :IdApartmentBooking, :IdQuotation, :IdClient, :IdBank, :BookingDate, :BookPrice, :VoucherNumber, :IsActive, :created_at, :updated_at
json.url apartment_booking_url(apartment_booking, format: :json)
