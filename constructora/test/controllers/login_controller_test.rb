require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get signup" do
    get login_signup_url
    assert_response :success
  end

  test "should get signin" do
    get login_signin_url
    assert_response :success
  end

  test "should get password-recovery" do
    get login_password_recovery_url
    assert_response :success
  end

end
