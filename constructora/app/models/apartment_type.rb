class ApartmentType < ApplicationRecord
	has_many :sales
	has_many :apartment_type_prices
	belongs_to :project
end
