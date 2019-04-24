require 'test_helper'

class ProjectApartmentTypePricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_apartment_type_price = project_apartment_type_prices(:one)
  end

  test "should get index" do
    get project_apartment_type_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_project_apartment_type_price_url
    assert_response :success
  end

  test "should create project_apartment_type_price" do
    assert_difference('ProjectApartmentTypePrice.count') do
      post project_apartment_type_prices_url, params: { project_apartment_type_price: { Floor: @project_apartment_type_price.Floor, IsActive: @project_apartment_type_price.IsActive, PercentageDiscount: @project_apartment_type_price.PercentageDiscount, Price: @project_apartment_type_price.Price, RegisterDate: @project_apartment_type_price.RegisterDate, ValidFor: @project_apartment_type_price.ValidFor, project_apartment_type_id: @project_apartment_type_price.project_apartment_type_id } }
    end

    assert_redirected_to project_apartment_type_price_url(ProjectApartmentTypePrice.last)
  end

  test "should show project_apartment_type_price" do
    get project_apartment_type_price_url(@project_apartment_type_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_apartment_type_price_url(@project_apartment_type_price)
    assert_response :success
  end

  test "should update project_apartment_type_price" do
    patch project_apartment_type_price_url(@project_apartment_type_price), params: { project_apartment_type_price: { Floor: @project_apartment_type_price.Floor, IsActive: @project_apartment_type_price.IsActive, PercentageDiscount: @project_apartment_type_price.PercentageDiscount, Price: @project_apartment_type_price.Price, RegisterDate: @project_apartment_type_price.RegisterDate, ValidFor: @project_apartment_type_price.ValidFor, project_apartment_type_id: @project_apartment_type_price.project_apartment_type_id } }
    assert_redirected_to project_apartment_type_price_url(@project_apartment_type_price)
  end

  test "should destroy project_apartment_type_price" do
    assert_difference('ProjectApartmentTypePrice.count', -1) do
      delete project_apartment_type_price_url(@project_apartment_type_price)
    end

    assert_redirected_to project_apartment_type_prices_url
  end
end
