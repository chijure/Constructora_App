json.extract! request_quotation, :id, :IdRequestQuotation, :IdProject, :IdUser, :IdentityNumber, :Name, :LastName, :Mail, :Phone, :RequestDate, :Status, :created_at, :updated_at
json.url request_quotation_url(request_quotation, format: :json)
