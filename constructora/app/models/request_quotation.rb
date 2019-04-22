class RequestQuotation < ApplicationRecord
	belongs_to :user
	belongs_to :project
	has_many :appointments
	has_many :quotations
end
