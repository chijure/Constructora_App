require "application_system_test_case"

class RequestQuotationsTest < ApplicationSystemTestCase
  setup do
    @request_quotation = request_quotations(:one)
  end

  test "visiting the index" do
    visit request_quotations_url
    assert_selector "h1", text: "Request Quotations"
  end

  test "creating a Request quotation" do
    visit request_quotations_url
    click_on "New Request Quotation"

    fill_in "Idproject", with: @request_quotation.IdProject
    fill_in "Idrequestquotation", with: @request_quotation.IdRequestQuotation
    fill_in "Iduser", with: @request_quotation.IdUser
    fill_in "Identitynumber", with: @request_quotation.IdentityNumber
    fill_in "Lastname", with: @request_quotation.LastName
    fill_in "Mail", with: @request_quotation.Mail
    fill_in "Name", with: @request_quotation.Name
    fill_in "Phone", with: @request_quotation.Phone
    fill_in "Requestdate", with: @request_quotation.RequestDate
    fill_in "Status", with: @request_quotation.Status
    click_on "Create Request quotation"

    assert_text "Request quotation was successfully created"
    click_on "Back"
  end

  test "updating a Request quotation" do
    visit request_quotations_url
    click_on "Edit", match: :first

    fill_in "Idproject", with: @request_quotation.IdProject
    fill_in "Idrequestquotation", with: @request_quotation.IdRequestQuotation
    fill_in "Iduser", with: @request_quotation.IdUser
    fill_in "Identitynumber", with: @request_quotation.IdentityNumber
    fill_in "Lastname", with: @request_quotation.LastName
    fill_in "Mail", with: @request_quotation.Mail
    fill_in "Name", with: @request_quotation.Name
    fill_in "Phone", with: @request_quotation.Phone
    fill_in "Requestdate", with: @request_quotation.RequestDate
    fill_in "Status", with: @request_quotation.Status
    click_on "Update Request quotation"

    assert_text "Request quotation was successfully updated"
    click_on "Back"
  end

  test "destroying a Request quotation" do
    visit request_quotations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request quotation was successfully destroyed"
  end
end
