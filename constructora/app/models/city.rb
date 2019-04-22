class City < ApplicationRecord
	belongs_to :state
	has_many :users
	has_many :clients
	has_many :projects

	validates :Name, presence: {
		message: "es requerido."
	}	
end
