class User < ApplicationRecord
    has_many :shoes, through: :raffles
    has_many :raffles 
end
