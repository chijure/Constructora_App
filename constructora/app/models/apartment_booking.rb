class ApartmentBooking < ApplicationRecord
	belongs_to :quotation
	belongs_to :client
	belongs_to :bank
	has_many :sales

	validates :BookingDate, presence: {
		message: "es requerido."
	}
	validates :BookPrice, presence: {
		message: "es requerido."
	}, 
	:numericality => 
	{ 
		:greater_than => 0, 
	  	message: ' debe ser mayor a 0'
	}

	validates :VoucherNumber, presence: {
		message: "es requerido."
	},
	length: 
	{
		maximum: 20,
		message: 'no debe ser mayor a 20 caracteres'
	}


end
