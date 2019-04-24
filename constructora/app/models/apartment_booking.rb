class ApartmentBooking < ApplicationRecord
	belongs_to :quotation
	belongs_to :client
	belongs_to :bank
	has_many :sales
end
