require 'test_helper'

class SalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get sales_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_url
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post sales_url, params: { sale: { CashAmount: @sale.CashAmount, FinancedAmount: @sale.FinancedAmount, IdApartmentBooking: @sale.IdApartmentBooking, IdApartmentType: @sale.IdApartmentType, IdBank: @sale.IdBank, IdSale: @sale.IdSale, IsActive: @sale.IsActive, PaymentType: @sale.PaymentType, SaleDate: @sale.SaleDate } }
    end

    assert_redirected_to sale_url(Sale.last)
  end

  test "should show sale" do
    get sale_url(@sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_url(@sale)
    assert_response :success
  end

  test "should update sale" do
    patch sale_url(@sale), params: { sale: { CashAmount: @sale.CashAmount, FinancedAmount: @sale.FinancedAmount, IdApartmentBooking: @sale.IdApartmentBooking, IdApartmentType: @sale.IdApartmentType, IdBank: @sale.IdBank, IdSale: @sale.IdSale, IsActive: @sale.IsActive, PaymentType: @sale.PaymentType, SaleDate: @sale.SaleDate } }
    assert_redirected_to sale_url(@sale)
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete sale_url(@sale)
    end

    assert_redirected_to sales_url
  end
end
