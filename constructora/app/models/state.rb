class State < ApplicationRecord
	validates :Name, presence: {
		message: "es requerido."
	}
end
