class Shoe < ApplicationRecord
    has_many :raffles
    has_many :users, through: :raffles
    scope :high_priced_item, -> (amount = $150) { where('price > ?', amount) }
end

#scope :future_appointments, -> {where("start_time > ?", Time.now ).order('start_time asc')}
