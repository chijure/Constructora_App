class ProjectApTypePrice < ApplicationRecord
  belongs_to :project_apartment_type

  	validates :ValidFor, presence: {
		message: "es requerido."
	}
	validates :PercentageDiscount, presence: {
		message: "es requerido."
	}
	validates :Floor, presence: {
		message: "es requerido."
	}
	validates :Price, presence: {
		message: "es requerido."
	}	
end
