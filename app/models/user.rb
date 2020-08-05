class User < ApplicationRecord
    has_many :shoes
    has_many :entries
    has_many :raffles, through: :entries
    has_secure_password
    validates :email, uniqueness: true, presence: true
    
end
