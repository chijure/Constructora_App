require "application_system_test_case"

class ProjectApartmentsTest < ApplicationSystemTestCase
  setup do
    @project_apartment = project_apartments(:one)
  end

  test "visiting the index" do
    visit project_apartments_url
    assert_selector "h1", text: "Project Apartments"
  end

  test "creating a Project apartment" do
    visit project_apartments_url
    click_on "New Project Apartment"

    fill_in "Description", with: @project_apartment.Description
    fill_in "Number", with: @project_apartment.Number
    fill_in "Picture", with: @project_apartment.Picture
    fill_in "Status", with: @project_apartment.Status
    fill_in "Project apartment type", with: @project_apartment.project_apartment_type_id
    fill_in "Project", with: @project_apartment.project_id
    click_on "Create Project apartment"

    assert_text "Project apartment was successfully created"
    click_on "Back"
  end

  test "updating a Project apartment" do
    visit project_apartments_url
    click_on "Edit", match: :first

    fill_in "Description", with: @project_apartment.Description
    fill_in "Number", with: @project_apartment.Number
    fill_in "Picture", with: @project_apartment.Picture
    fill_in "Status", with: @project_apartment.Status
    fill_in "Project apartment type", with: @project_apartment.project_apartment_type_id
    fill_in "Project", with: @project_apartment.project_id
    click_on "Update Project apartment"

    assert_text "Project apartment was successfully updated"
    click_on "Back"
  end

  test "destroying a Project apartment" do
    visit project_apartments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project apartment was successfully destroyed"
  end
end
