class User < ActiveRecord::Base

	has_secure_password  #for bcrypt we need to add this
	has_many :messages
	validates :username, presence: true, uniqueness: { case_sensitive: false}, length: {minimum: 3, maximum: 25}
	
end	