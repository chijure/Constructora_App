class Profile < ApplicationRecord
	has_many :users

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
