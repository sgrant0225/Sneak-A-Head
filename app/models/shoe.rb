class Shoe < ApplicationRecord
    has_many :users
    has_many :users, through: :raffles
end
