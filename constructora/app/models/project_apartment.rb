class ProjectApartment < ApplicationRecord
  belongs_to :project
  belongs_to :project_apartment_type

	validates :Number, presence: {
		message: "es requerido."
	}
	validates :Description, presence: {
		message: "es requerido."
	}
	validates :Picture, presence: {
		message: "es requerido."
	}	  
end
