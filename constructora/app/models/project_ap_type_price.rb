class ProjectApTypePrice < ApplicationRecord
  belongs_to :project_apartment_type

  	validates :ValidFor, presence: {
		message: "es requerido."
	},
	:numericality => 
	{ 
		:greater_than => 0, 
	  	message: ' debe ser mayor a 0'
	}

	validates :PercentageDiscount, presence: {
		message: "es requerido."
	},
	:numericality => 
	{ 
		:greater_than_or_equal_to => 0, 
	  	message: ' debe ser mayor o igual a 0%',
	  	:less_than_or_equal_to => 100,
	  	message: ' debe ser menor o igual a 100%'
	}

	validates :Floor, presence: {
		message: "es requerido."
	}, 
	:numericality => 
	{ 
		:greater_than => 0, 
	  	message: ' debe ser mayor a 0'
	}

	validates :Price, presence: {
		message: "es requerido."
	}, 
	:numericality => 
	{ 
		:greater_than => 0, 
	  	message: ' debe ser mayor a 0'
	}
end
