class User < ApplicationRecord
	attr_accessor :remember_token
	belongs_to :profile
	belongs_to :city
	has_many :request_quotations
	before_save { self.email = email.downcase }

	validates :IdentityNumber, presence: {
		message: "es requerido."
	}
	validates :Name, presence: {
		message: "es requerido."
	}
	validates :LastName, presence: {
		message: "es requerido."
	}
	validates :Address, presence: {
		message: "es requerido."
	}

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: {
		message: "es requerido."}, 
		format: { with: VALID_EMAIL_REGEX },
		uniqueness: { case_sensitive: false }

	validates :Phone, presence: {
		message: "es requerido."
	}

	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }

	 # Returns the hash digest of the given string.
	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
													  BCrypt::Engine.cost
		BCrypt::Password.create(string, cost: cost)
	end

	# Returns a random token.
	def User.new_token
		SecureRandom.urlsafe_base64
	end

	# Remembers a user in the database for use in persistent sessions.
	def remember
		self.remember_token = User.new_token
		update_attribute(:remember_digest, User.digest(remember_token))
	end

	# Returns true if the given token matches the digest.
	def authenticated?(remember_token)
		return false if remember_digest.nil?
		BCrypt::Password.new(remember_digest).is_password?(remember_token)
	end

	# Forgets a user.
	def forget
		update_attribute(:remember_digest, nil)
	end

end