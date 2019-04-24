class Quotation < ApplicationRecord
	belongs_to :request_quotation
	belongs_to :client
	has_many :apartment_bookings

	validates :Price, presence: {
		message: "es requerido."
	}
	validates :ValidFor, presence: {
		message: "es requerido."
	}
	validates :Status, presence: {
		message: "es requerido."
	}
end
