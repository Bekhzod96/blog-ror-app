class User < ApplicationRecord
	before_save {self.email = email.downcase}
	has_many :articles, dependent: :destroy
	validates :username, presence: true, 
						uniqueness: {case_sensitive: false}
	validates :email, presence: true, 
						uniqueness: {case_sensitive: false},
						format:{with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}
	has_secure_password
end