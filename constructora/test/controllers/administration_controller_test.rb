require 'test_helper'

class AdministrationControllerTest < ActionDispatch::IntegrationTest
  test "should get base_price" do
    get administration_base_price_url
    assert_response :success
  end

  test "should get report" do
    get administration_report_url
    assert_response :success
  end

  test "should get proforma" do
    get administration_proforma_url
    assert_response :success
  end

  test "should get register_sales" do
    get administration_register_sales_url
    assert_response :success
  end

  test "should get separate_departament" do
    get administration_separate_departament_url
    assert_response :success
  end

end
