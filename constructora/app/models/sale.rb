class Sale < ApplicationRecord
  belongs_to :project_apartment
  belongs_to :quotation
  belongs_to :bank
	validates :PaymentType, presence: {
		message: "es requerido."
	}

#	validates :CashAmount, presence: {
#		message: "es requerido."
#	}, 
#	:numericality => 
#	{ 
#		:greater_than_or_equal_to => 0, 
#	  	message: ' debe ser mayor o igual a 0'
#	}
#
#	validates :FinancedAmount, presence: {
#		message: "es requerido."
#	}, 
#	:numericality => 
#	{ 
#		:greater_than_or_equal_to => 0, 
#	  	message: ' debe ser mayor o igual a 0'
#	}

	validates :Voucher, presence: {
		message: "es requerido."
	}
end
