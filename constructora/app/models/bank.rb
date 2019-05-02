class Bank < ApplicationRecord
	has_many :apartment_bookings

	validates :Name, presence: {
		message: "es requerido."
	},
	length: 
	{
		maximum: 20,
		message: 'no debe ser mayor a 20 caracteres'
	}, 
	uniqueness: true
	{ 
		message: "ya existe"
	}
end
