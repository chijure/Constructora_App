class ApartmentBooking < ApplicationRecord
	belongs_to :bank
	has_many :sales
end
