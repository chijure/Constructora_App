class ApartmentType < ApplicationRecord
	has_many :project_apartment_types
	validates :Name, presence: {
		message: "es requerido."
	}	
end
