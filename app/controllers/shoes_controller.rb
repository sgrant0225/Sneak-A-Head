class ShoesController < ApplicationController

    def index
     @shoes = Shoe.all
    end    

    def show
     shoe = Shoe.find_by(params[:name])
    end    
end
