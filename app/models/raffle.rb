class Raffle < ApplicationRecord
    belongs_to :shoe, optional: true  #raffles.shoe_id
    belongs_to :user
    accepts_nested_attributes_for :user

end
