class RequestQuotation < ApplicationRecord
	belongs_to :user
	belongs_to :project
	has_many :appointments
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
	validates :Mail, presence: {
		message: "es requerido."
	}
	validates :Phone, presence: {
		message: "es requerido."
	}
end
