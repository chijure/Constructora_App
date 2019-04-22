class Quotation < ApplicationRecord
	belongs_to :request_quotation
	has_many :apartment_bookings	
end
