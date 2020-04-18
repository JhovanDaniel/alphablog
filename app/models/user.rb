class User < ApplicationRecord
	validates :username, presence: true, 
		uniqueness: {case_sensitive: false}, 
		length: {minimum: 3, maximum: 25 }
	VALIDATE_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
		uniqueness: {case_sensitive: false}, 
		length: { maximum: 105 },
		format: {with: VALIDATE_EMAIL_REGEX}
end