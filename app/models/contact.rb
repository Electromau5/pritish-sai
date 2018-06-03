class Contact < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, length: {maximum: 200}, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
	validates :description, length: { minimum: 10, maximum: 500 }, uniqueness: { case_sensitive: false }
end
