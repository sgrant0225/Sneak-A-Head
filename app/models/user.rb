class User < ApplicationRecord
    has_many :shoes
    has_many :raffles, through: shoes
    has_secure_password
    validates :email, uniqueness: true, presence: true
    
end
