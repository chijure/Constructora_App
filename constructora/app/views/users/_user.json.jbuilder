json.extract! user, :id, :IdUser, :IdProfile, :IdCity, :IdentityNumber, :Name, :LastName, :Address, :Mail, :Phone, :IsActive, :created_at, :updated_at
json.url user_url(user, format: :json)
