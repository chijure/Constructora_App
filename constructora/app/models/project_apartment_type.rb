class ProjectApartmentType < ApplicationRecord
  has_many :project_ap_type_prices
  has_many :project_apartments
  belongs_to :project
  belongs_to :apartment_type

	validates :Area, presence: {
		message: "es requerido."
	},
	:numericality =>
	{
		:greater_than => 0,
		message: 'debe ser mayor que 0'
	}

	validates :Floor, presence: {
		message: "es requerido."
	},
	:numericality => 
	{
		:greater_than => 0,
		message: 'debe ser mayor que 0'
	}

	validates :Quantity, presence: {
		message: "es requerido."
	},
	:numericality => 
	{
		:greater_than => 0,
		message: 'debe ser mayor que 0'
	}
end
