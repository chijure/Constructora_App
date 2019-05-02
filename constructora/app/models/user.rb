class User < ApplicationRecord
	belongs_to :profile
	belongs_to :city
	has_many :request_quotations

	validates :IdentityNumber, presence: true,
	length: 
	{
		maximum: 8
	}, 
	uniqueness: true

	validates :Name, presence: true,
	length: 
	{
		maximum: 20
	}

	validates :LastName, presence: true,
	length: 
	{
		maximum: 40
	}

	validates :Address, presence: true,
	length: 
	{
		maximum: 100
	}

	validates :Mail, presence: true, 
	email: true, 
	length: 
	{
		maximum: 50
	}

	validates :Phone, presence: true,
	length:
	{
		maximum: 10
	}	


end
