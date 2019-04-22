require 'test_helper'

class ApartmentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartment_type = apartment_types(:one)
  end

  test "should get index" do
    get apartment_types_url
    assert_response :success
  end

  test "should get new" do
    get new_apartment_type_url
    assert_response :success
  end

  test "should create apartment_type" do
    assert_difference('ApartmentType.count') do
      post apartment_types_url, params: { apartment_type: { Area: @apartment_type.Area, Available: @apartment_type.Available, BasePrice: @apartment_type.BasePrice, IdApartmentType: @apartment_type.IdApartmentType, IdProject: @apartment_type.IdProject, Name: @apartment_type.Name, Quantity: @apartment_type.Quantity, Sold: @apartment_type.Sold, Status: @apartment_type.Status } }
    end

    assert_redirected_to apartment_type_url(ApartmentType.last)
  end

  test "should show apartment_type" do
    get apartment_type_url(@apartment_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartment_type_url(@apartment_type)
    assert_response :success
  end

  test "should update apartment_type" do
    patch apartment_type_url(@apartment_type), params: { apartment_type: { Area: @apartment_type.Area, Available: @apartment_type.Available, BasePrice: @apartment_type.BasePrice, IdApartmentType: @apartment_type.IdApartmentType, IdProject: @apartment_type.IdProject, Name: @apartment_type.Name, Quantity: @apartment_type.Quantity, Sold: @apartment_type.Sold, Status: @apartment_type.Status } }
    assert_redirected_to apartment_type_url(@apartment_type)
  end

  test "should destroy apartment_type" do
    assert_difference('ApartmentType.count', -1) do
      delete apartment_type_url(@apartment_type)
    end

    assert_redirected_to apartment_types_url
  end
end
