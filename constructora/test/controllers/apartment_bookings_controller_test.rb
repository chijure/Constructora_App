require 'test_helper'

class ApartmentBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartment_booking = apartment_bookings(:one)
  end

  test "should get index" do
    get apartment_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_apartment_booking_url
    assert_response :success
  end

  test "should create apartment_booking" do
    assert_difference('ApartmentBooking.count') do
      post apartment_bookings_url, params: { apartment_booking: { BookPrice: @apartment_booking.BookPrice, BookingDate: @apartment_booking.BookingDate, IdApartmentBooking: @apartment_booking.IdApartmentBooking, IdBank: @apartment_booking.IdBank, IdClient: @apartment_booking.IdClient, IdQuotation: @apartment_booking.IdQuotation, IsActive: @apartment_booking.IsActive, VoucherNumber: @apartment_booking.VoucherNumber } }
    end

    assert_redirected_to apartment_booking_url(ApartmentBooking.last)
  end

  test "should show apartment_booking" do
    get apartment_booking_url(@apartment_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartment_booking_url(@apartment_booking)
    assert_response :success
  end

  test "should update apartment_booking" do
    patch apartment_booking_url(@apartment_booking), params: { apartment_booking: { BookPrice: @apartment_booking.BookPrice, BookingDate: @apartment_booking.BookingDate, IdApartmentBooking: @apartment_booking.IdApartmentBooking, IdBank: @apartment_booking.IdBank, IdClient: @apartment_booking.IdClient, IdQuotation: @apartment_booking.IdQuotation, IsActive: @apartment_booking.IsActive, VoucherNumber: @apartment_booking.VoucherNumber } }
    assert_redirected_to apartment_booking_url(@apartment_booking)
  end

  test "should destroy apartment_booking" do
    assert_difference('ApartmentBooking.count', -1) do
      delete apartment_booking_url(@apartment_booking)
    end

    assert_redirected_to apartment_bookings_url
  end
end
