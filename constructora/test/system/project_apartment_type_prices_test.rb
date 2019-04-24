require "application_system_test_case"

class ProjectApartmentTypePricesTest < ApplicationSystemTestCase
  setup do
    @project_apartment_type_price = project_apartment_type_prices(:one)
  end

  test "visiting the index" do
    visit project_apartment_type_prices_url
    assert_selector "h1", text: "Project Apartment Type Prices"
  end

  test "creating a Project apartment type price" do
    visit project_apartment_type_prices_url
    click_on "New Project Apartment Type Price"

    fill_in "Floor", with: @project_apartment_type_price.Floor
    fill_in "Isactive", with: @project_apartment_type_price.IsActive
    fill_in "Percentagediscount", with: @project_apartment_type_price.PercentageDiscount
    fill_in "Price", with: @project_apartment_type_price.Price
    fill_in "Registerdate", with: @project_apartment_type_price.RegisterDate
    fill_in "Validfor", with: @project_apartment_type_price.ValidFor
    fill_in "Project apartment type", with: @project_apartment_type_price.project_apartment_type_id
    click_on "Create Project apartment type price"

    assert_text "Project apartment type price was successfully created"
    click_on "Back"
  end

  test "updating a Project apartment type price" do
    visit project_apartment_type_prices_url
    click_on "Edit", match: :first

    fill_in "Floor", with: @project_apartment_type_price.Floor
    fill_in "Isactive", with: @project_apartment_type_price.IsActive
    fill_in "Percentagediscount", with: @project_apartment_type_price.PercentageDiscount
    fill_in "Price", with: @project_apartment_type_price.Price
    fill_in "Registerdate", with: @project_apartment_type_price.RegisterDate
    fill_in "Validfor", with: @project_apartment_type_price.ValidFor
    fill_in "Project apartment type", with: @project_apartment_type_price.project_apartment_type_id
    click_on "Update Project apartment type price"

    assert_text "Project apartment type price was successfully updated"
    click_on "Back"
  end

  test "destroying a Project apartment type price" do
    visit project_apartment_type_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project apartment type price was successfully destroyed"
  end
end
