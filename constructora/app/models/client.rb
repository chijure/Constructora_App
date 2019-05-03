class Client < ApplicationRecord
	belongs_to :city, optional: true
	has_many :apartment_bookings
	has_many :quotations

	validates :IdentityNumber, presence: {
		message: "es requerido."
	},
	length: 
	{
		maximum: 8,
		message: 'no debe ser mayor a 8 caracteres'
	}, 
	uniqueness: true
	{ 
		message: "ya existe"
	}
	
	validates :Name, presence: {
		message: "es requerido."
	},
	length: 
	{
		maximum: 20,
		message: 'no debe ser mayor a 20 caracteres'
	}

	validates :LastName, presence: {
		message: "es requerido."
	},
	length: 
	{
		maximum: 40,
		message: 'no debe ser mayor a 40 caracteres'
	}

	validates :Mail, presence: {
		message: "es requerido."
	}, email: true, 
	length: 
	{
		maximum: 50,
		message: 'no debe ser mayor a 50 caracteres'
	}

	validates :Phone, presence: {
		message: "es requerido."
	},
	length:
	{
		maximum: 10,
		message: 'no debe ser mayor a 10 caracteres'
	}	

end