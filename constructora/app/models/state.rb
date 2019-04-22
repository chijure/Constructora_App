class State < ApplicationRecord
	has_many :cities
	validates :Name, presence: {
		message: "es requerido."
	}
end
