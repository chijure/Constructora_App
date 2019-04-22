class Profile < ApplicationRecord
	has_many :users

	validates :Name, presence: {
		message: "es requerido."
	}	
end
