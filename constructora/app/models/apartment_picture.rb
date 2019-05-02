class ApartmentPicture < ApplicationRecord
  belongs_to :project_apartment
  mount_uploader :Picture, PictureUploader

	validates :Picture, presence: {
		message: "es requerido."
	}  

	validates :Description,
	length: 
	{
		maximum: 200,
		message: 'no debe ser mayor a 200 caracteres'
	}

end
