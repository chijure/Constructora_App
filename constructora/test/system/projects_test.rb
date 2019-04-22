require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Address", with: @project.Address
    fill_in "Apartmentsquantity", with: @project.ApartmentsQuantity
    fill_in "Availableparkings", with: @project.AvailableParkings
    fill_in "Description", with: @project.Description
    fill_in "Enddate", with: @project.EndDate
    fill_in "Floors", with: @project.Floors
    fill_in "Idcity", with: @project.IdCity
    fill_in "Idproject", with: @project.IdProject
    fill_in "Name", with: @project.Name
    fill_in "Parkingsquantity", with: @project.ParkingsQuantity
    fill_in "Price", with: @project.Price
    fill_in "Startdate", with: @project.StartDate
    fill_in "Status", with: @project.Status
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Address", with: @project.Address
    fill_in "Apartmentsquantity", with: @project.ApartmentsQuantity
    fill_in "Availableparkings", with: @project.AvailableParkings
    fill_in "Description", with: @project.Description
    fill_in "Enddate", with: @project.EndDate
    fill_in "Floors", with: @project.Floors
    fill_in "Idcity", with: @project.IdCity
    fill_in "Idproject", with: @project.IdProject
    fill_in "Name", with: @project.Name
    fill_in "Parkingsquantity", with: @project.ParkingsQuantity
    fill_in "Price", with: @project.Price
    fill_in "Startdate", with: @project.StartDate
    fill_in "Status", with: @project.Status
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
