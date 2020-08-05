class Raffle < ApplicationRecord
    belongs_to :shoe
    belongs_to :user

    has_many :entries #user_id and raffle_id
    has_many :users, through: :entries
end
