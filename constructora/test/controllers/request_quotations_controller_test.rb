require 'test_helper'

class RequestQuotationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_quotation = request_quotations(:one)
  end

  test "should get index" do
    get request_quotations_url
    assert_response :success
  end

  test "should get new" do
    get new_request_quotation_url
    assert_response :success
  end

  test "should create request_quotation" do
    assert_difference('RequestQuotation.count') do
      post request_quotations_url, params: { request_quotation: { IdProject: @request_quotation.IdProject, IdRequestQuotation: @request_quotation.IdRequestQuotation, IdUser: @request_quotation.IdUser, IdentityNumber: @request_quotation.IdentityNumber, LastName: @request_quotation.LastName, Mail: @request_quotation.Mail, Name: @request_quotation.Name, Phone: @request_quotation.Phone, RequestDate: @request_quotation.RequestDate, Status: @request_quotation.Status } }
    end

    assert_redirected_to request_quotation_url(RequestQuotation.last)
  end

  test "should show request_quotation" do
    get request_quotation_url(@request_quotation)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_quotation_url(@request_quotation)
    assert_response :success
  end

  test "should update request_quotation" do
    patch request_quotation_url(@request_quotation), params: { request_quotation: { IdProject: @request_quotation.IdProject, IdRequestQuotation: @request_quotation.IdRequestQuotation, IdUser: @request_quotation.IdUser, IdentityNumber: @request_quotation.IdentityNumber, LastName: @request_quotation.LastName, Mail: @request_quotation.Mail, Name: @request_quotation.Name, Phone: @request_quotation.Phone, RequestDate: @request_quotation.RequestDate, Status: @request_quotation.Status } }
    assert_redirected_to request_quotation_url(@request_quotation)
  end

  test "should destroy request_quotation" do
    assert_difference('RequestQuotation.count', -1) do
      delete request_quotation_url(@request_quotation)
    end

    assert_redirected_to request_quotations_url
  end
end
