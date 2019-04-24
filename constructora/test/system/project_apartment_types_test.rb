require "application_system_test_case"

class ProjectApartmentTypesTest < ApplicationSystemTestCase
  setup do
    @project_apartment_type = project_apartment_types(:one)
  end

  test "visiting the index" do
    visit project_apartment_types_url
    assert_selector "h1", text: "Project Apartment Types"
  end

  test "creating a Project apartment type" do
    visit project_apartment_types_url
    click_on "New Project Apartment Type"

    fill_in "Area", with: @project_apartment_type.Area
    fill_in "Floor", with: @project_apartment_type.Floor
    fill_in "Isactive", with: @project_apartment_type.IsActive
    fill_in "Quantity", with: @project_apartment_type.Quantity
    fill_in "Apartment type", with: @project_apartment_type.apartment_type_id
    fill_in "Project", with: @project_apartment_type.project_id
    click_on "Create Project apartment type"

    assert_text "Project apartment type was successfully created"
    click_on "Back"
  end

  test "updating a Project apartment type" do
    visit project_apartment_types_url
    click_on "Edit", match: :first

    fill_in "Area", with: @project_apartment_type.Area
    fill_in "Floor", with: @project_apartment_type.Floor
    fill_in "Isactive", with: @project_apartment_type.IsActive
    fill_in "Quantity", with: @project_apartment_type.Quantity
    fill_in "Apartment type", with: @project_apartment_type.apartment_type_id
    fill_in "Project", with: @project_apartment_type.project_id
    click_on "Update Project apartment type"

    assert_text "Project apartment type was successfully updated"
    click_on "Back"
  end

  test "destroying a Project apartment type" do
    visit project_apartment_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project apartment type was successfully destroyed"
  end
end
