json.extract! apartment_picture, :id, :Picture, :Description, :Active, :project_apartment_id, :created_at, :updated_at
json.url apartment_picture_url(apartment_picture, format: :json)
