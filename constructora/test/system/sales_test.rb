require "application_system_test_case"

class SalesTest < ApplicationSystemTestCase
  setup do
    @sale = sales(:one)
  end

  test "visiting the index" do
    visit sales_url
    assert_selector "h1", text: "Sales"
  end

  test "creating a Sale" do
    visit sales_url
    click_on "New Sale"

    fill_in "Cashamount", with: @sale.CashAmount
    fill_in "Financedamount", with: @sale.FinancedAmount
    fill_in "Isactive", with: @sale.IsActive
    fill_in "Paymenttype", with: @sale.PaymentType
    fill_in "Saledate", with: @sale.SaleDate
    fill_in "Apartment booking", with: @sale.apartment_booking_id
    fill_in "Bank", with: @sale.bank_id
    fill_in "Project apartment", with: @sale.project_apartment_id
    click_on "Create Sale"

    assert_text "Sale was successfully created"
    click_on "Back"
  end

  test "updating a Sale" do
    visit sales_url
    click_on "Edit", match: :first

    fill_in "Cashamount", with: @sale.CashAmount
    fill_in "Financedamount", with: @sale.FinancedAmount
    fill_in "Isactive", with: @sale.IsActive
    fill_in "Paymenttype", with: @sale.PaymentType
    fill_in "Saledate", with: @sale.SaleDate
    fill_in "Apartment booking", with: @sale.apartment_booking_id
    fill_in "Bank", with: @sale.bank_id
    fill_in "Project apartment", with: @sale.project_apartment_id
    click_on "Update Sale"

    assert_text "Sale was successfully updated"
    click_on "Back"
  end

  test "destroying a Sale" do
    visit sales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sale was successfully destroyed"
  end
end