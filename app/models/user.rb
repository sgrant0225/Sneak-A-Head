class User < ApplicationRecord
    has_many :raffles 
    has_many :shoes, through: :raffles
    has_secure_password
    #validates :email, uniqueness: true, presence: true
    
    
end
