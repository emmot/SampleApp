class User < ActiveRecord::Base
	before_save {self.email = email.downcase}
	VALLD_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name, presence: true, length: {maximum: 20}
	validates :email, presence: true, format: {with: VALLD_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password, length: { minimum: 6 }
end
