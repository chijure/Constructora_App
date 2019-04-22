json.extract! client, :id, :IdClient, :IdCity, :IdentityNumber, :Name, :LastName, :Address, :Mail, :Phone, :IsActive, :created_at, :updated_at
json.url client_url(client, format: :json)
