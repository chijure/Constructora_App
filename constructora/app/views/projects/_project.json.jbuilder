json.extract! project, :id, :IdProject, :IdCity, :Name, :Price, :StartDate, :EndDate, :Address, :Description, :Floors, :ApartmentsQuantity, :ParkingsQuantity, :AvailableParkings, :Status, :created_at, :updated_at
json.url project_url(project, format: :json)
