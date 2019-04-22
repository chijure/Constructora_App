require "application_system_test_case"

class ApartmentTypePricesTest < ApplicationSystemTestCase
  setup do
    @apartment_type_price = apartment_type_prices(:one)
  end

  test "visiting the index" do
    visit apartment_type_prices_url
    assert_selector "h1", text: "Apartment Type Prices"
  end

  test "creating a Apartment type price" do
    visit apartment_type_prices_url
    click_on "New Apartment Type Price"

    fill_in "Finalprice", with: @apartment_type_price.FinalPrice
    fill_in "Floor", with: @apartment_type_price.Floor
    fill_in "Idapartmenttype", with: @apartment_type_price.IdApartmentType
    fill_in "Idapartmenttypeprice", with: @apartment_type_price.IdApartmentTypePrice
    fill_in "Isactive", with: @apartment_type_price.IsActive
    fill_in "Percentajediscount", with: @apartment_type_price.PercentajeDiscount
    fill_in "Registerdate", with: @apartment_type_price.RegisterDate
    fill_in "Validfor", with: @apartment_type_price.ValidFor
    click_on "Create Apartment type price"

    assert_text "Apartment type price was successfully created"
    click_on "Back"
  end

  test "updating a Apartment type price" do
    visit apartment_type_prices_url
    click_on "Edit", match: :first

    fill_in "Finalprice", with: @apartment_type_price.FinalPrice
    fill_in "Floor", with: @apartment_type_price.Floor
    fill_in "Idapartmenttype", with: @apartment_type_price.IdApartmentType
    fill_in "Idapartmenttypeprice", with: @apartment_type_price.IdApartmentTypePrice
    fill_in "Isactive", with: @apartment_type_price.IsActive
    fill_in "Percentajediscount", with: @apartment_type_price.PercentajeDiscount
    fill_in "Registerdate", with: @apartment_type_price.RegisterDate
    fill_in "Validfor", with: @apartment_type_price.ValidFor
    click_on "Update Apartment type price"

    assert_text "Apartment type price was successfully updated"
    click_on "Back"
  end

  test "destroying a Apartment type price" do
    visit apartment_type_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apartment type price was successfully destroyed"
  end
end
