class Client < ApplicationRecord
	belongs_to :city
	has_many :apartment_bookings
	has_many :quotations

	validates :IdentityNumber, presence: {
		message: "es requerido."
	}
	validates :Name, presence: {
		message: "es requerido."
	}
	validates :LastName, presence: {
		message: "es requerido."
	}
	validates :Address, presence: {
		message: "es requerido."
	}
	validates :Mail, presence: {
		message: "es requerido."
	}
	validates :Phone, presence: {
		message: "es requerido."
	}
end
