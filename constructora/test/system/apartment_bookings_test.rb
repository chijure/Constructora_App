require "application_system_test_case"

class ApartmentBookingsTest < ApplicationSystemTestCase
  setup do
    @apartment_booking = apartment_bookings(:one)
  end

  test "visiting the index" do
    visit apartment_bookings_url
    assert_selector "h1", text: "Apartment Bookings"
  end

  test "creating a Apartment booking" do
    visit apartment_bookings_url
    click_on "New Apartment Booking"

    fill_in "Bookprice", with: @apartment_booking.BookPrice
    fill_in "Bookingdate", with: @apartment_booking.BookingDate
    fill_in "Idapartmentbooking", with: @apartment_booking.IdApartmentBooking
    fill_in "Idbank", with: @apartment_booking.IdBank
    fill_in "Idclient", with: @apartment_booking.IdClient
    fill_in "Idquotation", with: @apartment_booking.IdQuotation
    fill_in "Isactive", with: @apartment_booking.IsActive
    fill_in "Vouchernumber", with: @apartment_booking.VoucherNumber
    click_on "Create Apartment booking"

    assert_text "Apartment booking was successfully created"
    click_on "Back"
  end

  test "updating a Apartment booking" do
    visit apartment_bookings_url
    click_on "Edit", match: :first

    fill_in "Bookprice", with: @apartment_booking.BookPrice
    fill_in "Bookingdate", with: @apartment_booking.BookingDate
    fill_in "Idapartmentbooking", with: @apartment_booking.IdApartmentBooking
    fill_in "Idbank", with: @apartment_booking.IdBank
    fill_in "Idclient", with: @apartment_booking.IdClient
    fill_in "Idquotation", with: @apartment_booking.IdQuotation
    fill_in "Isactive", with: @apartment_booking.IsActive
    fill_in "Vouchernumber", with: @apartment_booking.VoucherNumber
    click_on "Update Apartment booking"

    assert_text "Apartment booking was successfully updated"
    click_on "Back"
  end

  test "destroying a Apartment booking" do
    visit apartment_bookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apartment booking was successfully destroyed"
  end
end
