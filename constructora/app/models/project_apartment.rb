class ProjectApartment < ApplicationRecord
	mount_uploader :Picture, PictureUploader
	has_many :request_quotations
	has_many :apartment_pictures
  	belongs_to :project
  	belongs_to :project_apartment_type

	validates :Number, presence: {
		message: "es requerido."
	}, 
	uniqueness: true 
	{ 
		scope: :project, 
		message: "ya existe"
	}

	validates :Description, presence: {
		message: "es requerido."
	},
	length: 
	{
		maximum: 200,
		message: 'no debe ser mayor a 200 caracteres'
	}

	validates :Picture, presence: {
		message: "es requerido."
	}

end
