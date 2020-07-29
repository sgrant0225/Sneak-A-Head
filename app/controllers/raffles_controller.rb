class RafflesController < ApplicationController

    def index
      @raffles = Raffle.all 
      #binding.pry
    end    
end
