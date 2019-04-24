require 'test_helper'

class ProjectApartmentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_apartment_type = project_apartment_types(:one)
  end

  test "should get index" do
    get project_apartment_types_url
    assert_response :success
  end

  test "should get new" do
    get new_project_apartment_type_url
    assert_response :success
  end

  test "should create project_apartment_type" do
    assert_difference('ProjectApartmentType.count') do
      post project_apartment_types_url, params: { project_apartment_type: { Area: @project_apartment_type.Area, Floor: @project_apartment_type.Floor, IsActive: @project_apartment_type.IsActive, Quantity: @project_apartment_type.Quantity, apartment_type_id: @project_apartment_type.apartment_type_id, project_id: @project_apartment_type.project_id } }
    end

    assert_redirected_to project_apartment_type_url(ProjectApartmentType.last)
  end

  test "should show project_apartment_type" do
    get project_apartment_type_url(@project_apartment_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_apartment_type_url(@project_apartment_type)
    assert_response :success
  end

  test "should update project_apartment_type" do
    patch project_apartment_type_url(@project_apartment_type), params: { project_apartment_type: { Area: @project_apartment_type.Area, Floor: @project_apartment_type.Floor, IsActive: @project_apartment_type.IsActive, Quantity: @project_apartment_type.Quantity, apartment_type_id: @project_apartment_type.apartment_type_id, project_id: @project_apartment_type.project_id } }
    assert_redirected_to project_apartment_type_url(@project_apartment_type)
  end

  test "should destroy project_apartment_type" do
    assert_difference('ProjectApartmentType.count', -1) do
      delete project_apartment_type_url(@project_apartment_type)
    end

    assert_redirected_to project_apartment_types_url
  end
end
