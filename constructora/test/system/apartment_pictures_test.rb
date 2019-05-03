require "application_system_test_case"

class ApartmentPicturesTest < ApplicationSystemTestCase
  setup do
    @apartment_picture = apartment_pictures(:one)
  end

  test "visiting the index" do
    visit apartment_pictures_url
    assert_selector "h1", text: "Apartment Pictures"
  end

  test "creating a Apartment picture" do
    visit apartment_pictures_url
    click_on "New Apartment Picture"

    fill_in "Active", with: @apartment_picture.Active
    fill_in "Description", with: @apartment_picture.Description
    fill_in "Picture", with: @apartment_picture.Picture
    fill_in "Project apartment", with: @apartment_picture.project_apartment_id
    click_on "Create Apartment picture"

    assert_text "Apartment picture was successfully created"
    click_on "Back"
  end

  test "updating a Apartment picture" do
    visit apartment_pictures_url
    click_on "Edit", match: :first

    fill_in "Active", with: @apartment_picture.Active
    fill_in "Description", with: @apartment_picture.Description
    fill_in "Picture", with: @apartment_picture.Picture
    fill_in "Project apartment", with: @apartment_picture.project_apartment_id
    click_on "Update Apartment picture"

    assert_text "Apartment picture was successfully updated"
    click_on "Back"
  end

  test "destroying a Apartment picture" do
    visit apartment_pictures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apartment picture was successfully destroyed"
  end
end
