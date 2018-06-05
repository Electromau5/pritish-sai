class Contact < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: :true, length: {maximum: 200}, format: { with: VALID_EMAIL_REGEX }
	validates :description, presence: :true, length: { minimum: 10, maximum: 500 }
end
