class Quotation < ApplicationRecord
	belongs_to :request_quotation
	belongs_to :client
	has_many :apartment_bookings
	has_many :sales

	validates :Price, presence: {
		message: "es requerido."
	}, 
	:numericality => 
	{ 
		:greater_than => 0, 
	  	message: ' debe ser mayor a 0'
	}

	validates :ValidFor, presence: {
		message: "es requerido."
	}, 
	:numericality => 
	{ 
		:greater_than => 0, 
	  	message: ' debe ser mayor a 0'
	}
	
	validates :Status, presence: {
		message: "es requerido."
	}
end
