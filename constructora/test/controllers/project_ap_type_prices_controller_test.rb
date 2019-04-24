require 'test_helper'

class ProjectApTypePricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_ap_type_price = project_ap_type_prices(:one)
  end

  test "should get index" do
    get project_ap_type_prices_url
    assert_response :success
  end

  test "should get new" do
    get new_project_ap_type_price_url
    assert_response :success
  end

  test "should create project_ap_type_price" do
    assert_difference('ProjectApTypePrice.count') do
      post project_ap_type_prices_url, params: { project_ap_type_price: { Floor: @project_ap_type_price.Floor, IsActive: @project_ap_type_price.IsActive, PercentageDiscount: @project_ap_type_price.PercentageDiscount, Price: @project_ap_type_price.Price, RegisterDate: @project_ap_type_price.RegisterDate, ValidFor: @project_ap_type_price.ValidFor, project_apartment_type_id: @project_ap_type_price.project_apartment_type_id } }
    end

    assert_redirected_to project_ap_type_price_url(ProjectApTypePrice.last)
  end

  test "should show project_ap_type_price" do
    get project_ap_type_price_url(@project_ap_type_price)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_ap_type_price_url(@project_ap_type_price)
    assert_response :success
  end

  test "should update project_ap_type_price" do
    patch project_ap_type_price_url(@project_ap_type_price), params: { project_ap_type_price: { Floor: @project_ap_type_price.Floor, IsActive: @project_ap_type_price.IsActive, PercentageDiscount: @project_ap_type_price.PercentageDiscount, Price: @project_ap_type_price.Price, RegisterDate: @project_ap_type_price.RegisterDate, ValidFor: @project_ap_type_price.ValidFor, project_apartment_type_id: @project_ap_type_price.project_apartment_type_id } }
    assert_redirected_to project_ap_type_price_url(@project_ap_type_price)
  end

  test "should destroy project_ap_type_price" do
    assert_difference('ProjectApTypePrice.count', -1) do
      delete project_ap_type_price_url(@project_ap_type_price)
    end

    assert_redirected_to project_ap_type_prices_url
  end
end
