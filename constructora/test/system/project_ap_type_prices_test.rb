require "application_system_test_case"

class ProjectApTypePricesTest < ApplicationSystemTestCase
  setup do
    @project_ap_type_price = project_ap_type_prices(:one)
  end

  test "visiting the index" do
    visit project_ap_type_prices_url
    assert_selector "h1", text: "Project Ap Type Prices"
  end

  test "creating a Project ap type price" do
    visit project_ap_type_prices_url
    click_on "New Project Ap Type Price"

    fill_in "Floor", with: @project_ap_type_price.Floor
    fill_in "Isactive", with: @project_ap_type_price.IsActive
    fill_in "Percentagediscount", with: @project_ap_type_price.PercentageDiscount
    fill_in "Price", with: @project_ap_type_price.Price
    fill_in "Registerdate", with: @project_ap_type_price.RegisterDate
    fill_in "Validfor", with: @project_ap_type_price.ValidFor
    fill_in "Project apartment type", with: @project_ap_type_price.project_apartment_type_id
    click_on "Create Project ap type price"

    assert_text "Project ap type price was successfully created"
    click_on "Back"
  end

  test "updating a Project ap type price" do
    visit project_ap_type_prices_url
    click_on "Edit", match: :first

    fill_in "Floor", with: @project_ap_type_price.Floor
    fill_in "Isactive", with: @project_ap_type_price.IsActive
    fill_in "Percentagediscount", with: @project_ap_type_price.PercentageDiscount
    fill_in "Price", with: @project_ap_type_price.Price
    fill_in "Registerdate", with: @project_ap_type_price.RegisterDate
    fill_in "Validfor", with: @project_ap_type_price.ValidFor
    fill_in "Project apartment type", with: @project_ap_type_price.project_apartment_type_id
    click_on "Update Project ap type price"

    assert_text "Project ap type price was successfully updated"
    click_on "Back"
  end

  test "destroying a Project ap type price" do
    visit project_ap_type_prices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project ap type price was successfully destroyed"
  end
end
