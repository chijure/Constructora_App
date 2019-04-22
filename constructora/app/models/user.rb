class User < ApplicationRecord
	belongs_to :profile
	belongs_to :city
	has_many :request_quotations
end
