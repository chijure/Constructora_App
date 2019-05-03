class ApartmentType < ApplicationRecord
	has_many :project_apartment_types
	validates :Name, presence: {
		message: "es requerido."
	},
	length: 
	{
		maximum: 20,
		message: 'no debe ser mayor a 20 caracteres'
	}
end
