class Client < ApplicationRecord
	belongs_to :city
	has_many :apartment_bookings
	has_many :quotations
end
