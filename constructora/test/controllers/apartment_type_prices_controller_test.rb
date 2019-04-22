require 'test_helper'

class ApartmentTypePricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartment_type_price = apartment_type_prices(:one)
  end

  test "should get index" do
    get apartment_type_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_apartment_type_price_url
    assert_response :success
  end

  test "should create apartment_type_price" do
    assert_difference('ApartmentTypePrice.count') do
      post apartment_type_prices_url, params: { apartment_type_price: { FinalPrice: @apartment_type_price.FinalPrice, Floor: @apartment_type_price.Floor, IdApartmentType: @apartment_type_price.IdApartmentType, IdApartmentTypePrice: @apartment_type_price.IdApartmentTypePrice, IsActive: @apartment_type_price.IsActive, PercentajeDiscount: @apartment_type_price.PercentajeDiscount, RegisterDate: @apartment_type_price.RegisterDate, ValidFor: @apartment_type_price.ValidFor } }
    end

    assert_redirected_to apartment_type_price_url(ApartmentTypePrice.last)
  end

  test "should show apartment_type_price" do
    get apartment_type_price_url(@apartment_type_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartment_type_price_url(@apartment_type_price)
    assert_response :success
  end

  test "should update apartment_type_price" do
    patch apartment_type_price_url(@apartment_type_price), params: { apartment_type_price: { FinalPrice: @apartment_type_price.FinalPrice, Floor: @apartment_type_price.Floor, IdApartmentType: @apartment_type_price.IdApartmentType, IdApartmentTypePrice: @apartment_type_price.IdApartmentTypePrice, IsActive: @apartment_type_price.IsActive, PercentajeDiscount: @apartment_type_price.PercentajeDiscount, RegisterDate: @apartment_type_price.RegisterDate, ValidFor: @apartment_type_price.ValidFor } }
    assert_redirected_to apartment_type_price_url(@apartment_type_price)
  end

  test "should destroy apartment_type_price" do
    assert_difference('ApartmentTypePrice.count', -1) do
      delete apartment_type_price_url(@apartment_type_price)
    end

    assert_redirected_to apartment_type_prices_url
  end
end
