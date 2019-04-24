class Sale < ApplicationRecord
  belongs_to :project_apartment
  belongs_to :apartment_booking
  belongs_to :bank
	validates :PaymentType, presence: {
		message: "es requerido."
	}
	validates :CashAmount, presence: {
		message: "es requerido."
	}
	validates :FinancedAmount, presence: {
		message: "es requerido."
	}  
end
