class Project < ApplicationRecord
	mount_uploader :Picture, PictureUploader
	has_many :request_quotations
	has_many :project_apartments
	has_many :project_apartment_types
	belongs_to :city
	validates :Name, presence: {
		message: "es requerido."
	}
	validates :Price, presence: {
		message: "es requerido."
	}
	validates :Address, presence: {
		message: "es requerido."
	}
	validates :Description, presence: {
		message: "es requerido."
	}
	validates :Floors, presence: {
		message: "es requerido."
	}
	validates :ApartmentsQuantity, presence: {
		message: "es requerido."
	}
	validates :ParkingsQuantity, presence: {
		message: "es requerido."
	}
	validates :Picture, presence: {
		message: "es requerido."
	}
end
