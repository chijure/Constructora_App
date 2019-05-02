class Project < ApplicationRecord
	mount_uploader :Picture, PictureUploader
	has_many :request_quotations
	has_many :project_apartments
	has_many :project_apartment_types
	belongs_to :city

	validates :Name, presence: {
		message: "es requerido."
	},
	length: 
	{
		maximum: 20,
		message: 'no debe ser mayor a 20 caracteres'
	}

	validates :Price, presence: {
		message: "es requerido."
	},
	:numericality => 
	{ 
		:greater_than => 0, 
	  	message: ' debe ser mayor a 0'
	}

	validates :Address, presence: {
		message: "es requerido."
	},
	length: 
	{
		maximum: 100,
		message: 'no debe ser mayor a 100 caracteres'
	}

	validates :Description, presence: {
		message: "es requerido."
	},
	length: 
	{
		maximum: 1000,
		message: 'no debe ser mayor a 1000 caracteres'
	}

	validates :Floors, presence: {
		message: "es requerido."
	},
	:numericality => 
	{ 
		:greater_than => 0, 
	  	message: ' debe ser mayor a 0'
	}

	validates :ApartmentsQuantity, presence: {
		message: "es requerido."
	},
	:numericality => 
	{ 
		:greater_than => 0, 
	  	message: ' debe ser mayor a 0'
	}

	validates :ParkingsQuantity, presence: {
		message: "es requerido."
	},
	:numericality => 
	{ 
		:greater_than => 0, 
	  	message: ' debe ser mayor a 0'
	}

	validates :Picture, presence: {
		message: "es requerido."
	}
end
