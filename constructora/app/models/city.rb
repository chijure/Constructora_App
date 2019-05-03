class City < ApplicationRecord
	belongs_to :state
	has_many :users
	has_many :clients
	has_many :projects

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
