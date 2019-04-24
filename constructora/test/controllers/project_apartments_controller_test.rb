require 'test_helper'

class ProjectApartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_apartment = project_apartments(:one)
  end

  test "should get index" do
    get project_apartments_url
    assert_response :success
  end

  test "should get new" do
    get new_project_apartment_url
    assert_response :success
  end

  test "should create project_apartment" do
    assert_difference('ProjectApartment.count') do
      post project_apartments_url, params: { project_apartment: { Description: @project_apartment.Description, Number: @project_apartment.Number, Picture: @project_apartment.Picture, Status: @project_apartment.Status, project_apartment_type_id: @project_apartment.project_apartment_type_id, project_id: @project_apartment.project_id } }
    end

    assert_redirected_to project_apartment_url(ProjectApartment.last)
  end

  test "should show project_apartment" do
    get project_apartment_url(@project_apartment)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_apartment_url(@project_apartment)
    assert_response :success
  end

  test "should update project_apartment" do
    patch project_apartment_url(@project_apartment), params: { project_apartment: { Description: @project_apartment.Description, Number: @project_apartment.Number, Picture: @project_apartment.Picture, Status: @project_apartment.Status, project_apartment_type_id: @project_apartment.project_apartment_type_id, project_id: @project_apartment.project_id } }
    assert_redirected_to project_apartment_url(@project_apartment)
  end

  test "should destroy project_apartment" do
    assert_difference('ProjectApartment.count', -1) do
      delete project_apartment_url(@project_apartment)
    end

    assert_redirected_to project_apartments_url
  end
end
