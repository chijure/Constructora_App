class Project < ApplicationRecord
	has_many :request_quotations
	has_many :apartment_types
	belongs_to :city
end
