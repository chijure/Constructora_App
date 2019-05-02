class RequestQuotation < ApplicationRecord
	belongs_to :user
	belongs_to :project
	belongs_to :project_apartment
	has_many :appointments
	has_many :quotations
	validates :IdentityNumber, presence: {
		message: "es requerido."
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
	}, 
	email: true, 
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
