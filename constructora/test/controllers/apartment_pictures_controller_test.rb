require 'test_helper'

class ApartmentPicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartment_picture = apartment_pictures(:one)
  end

  test "should get index" do
    get apartment_pictures_url
    assert_response :success
  end

  test "should get new" do
    get new_apartment_picture_url
    assert_response :success
  end

  test "should create apartment_picture" do
    assert_difference('ApartmentPicture.count') do
      post apartment_pictures_url, params: { apartment_picture: { Active: @apartment_picture.Active, Description: @apartment_picture.Description, Picture: @apartment_picture.Picture, project_apartment_id: @apartment_picture.project_apartment_id } }
    end

    assert_redirected_to apartment_picture_url(ApartmentPicture.last)
  end

  test "should show apartment_picture" do
    get apartment_picture_url(@apartment_picture)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartment_picture_url(@apartment_picture)
    assert_response :success
  end

  test "should update apartment_picture" do
    patch apartment_picture_url(@apartment_picture), params: { apartment_picture: { Active: @apartment_picture.Active, Description: @apartment_picture.Description, Picture: @apartment_picture.Picture, project_apartment_id: @apartment_picture.project_apartment_id } }
    assert_redirected_to apartment_picture_url(@apartment_picture)
  end

  test "should destroy apartment_picture" do
    assert_difference('ApartmentPicture.count', -1) do
      delete apartment_picture_url(@apartment_picture)
    end

    assert_redirected_to apartment_pictures_url
  end
end
