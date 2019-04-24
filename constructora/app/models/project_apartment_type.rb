class ProjectApartmentType < ApplicationRecord
  has_many :project_ap_type_prices
  has_many :project_apartments
  belongs_to :project
  belongs_to :apartment_type

	validates :Area, presence: {
		message: "es requerido."
	}
	validates :Floor, presence: {
		message: "es requerido."
	}
	validates :Quantity, presence: {
		message: "es requerido."
	}
end
