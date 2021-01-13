class ShoesController < ApplicationController

    def index #this index route can shoe all the shoes on the main page
     @shoes = Shoe.all
     #binding.pry
    end    

    def show 
     shoe = Shoe.find_by(params[:name])
    end   
    
    #has_many raffles
    #has_many :users, through: :raffles
end
