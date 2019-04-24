require "application_system_test_case"

class ApartmentTypesTest < ApplicationSystemTestCase
  setup do
    @apartment_type = apartment_types(:one)
  end

  test "visiting the index" do
    visit apartment_types_url
    assert_selector "h1", text: "Apartment Types"
  end

  test "creating a Apartment type" do
    visit apartment_types_url
    click_on "New Apartment Type"

    fill_in "Isactive", with: @apartment_type.IsActive
    fill_in "Name", with: @apartment_type.Name
    click_on "Create Apartment type"

    assert_text "Apartment type was successfully created"
    click_on "Back"
  end

  test "updating a Apartment type" do
    visit apartment_types_url
    click_on "Edit", match: :first

    fill_in "Isactive", with: @apartment_type.IsActive
    fill_in "Name", with: @apartment_type.Name
    click_on "Update Apartment type"

    assert_text "Apartment type was successfully updated"
    click_on "Back"
  end

  test "destroying a Apartment type" do
    visit apartment_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apartment type was successfully destroyed"
  end
end
