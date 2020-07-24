class Raffle < ApplicationRecord
    belongs_to :shoe
    belongs_to :user
end
