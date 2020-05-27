class User < ApplicationRecord
		validates :username, presence: true, 
							uniqueness: {case_sensitive: false}
		validates :email, presence: true, 
							uniqueness: {case_sensitive: false},
							format:{with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i}
end