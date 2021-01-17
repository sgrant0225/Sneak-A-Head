class RafflesController < ApplicationController

    def index
     @raffles = Raffle.all 
     #binding.pry
    end
    
    def show
     @raffle = Raffle.find(params[:id])
     #binding.pry
    end 

    def new 
     @raffle = Raffle.new
     @raffle.build_user
     #binding.pry
    end     
    
    def create 
     @raffle = Raffle.new(raffle_params)
      if @raffle.save
        binding.pry
       redirect_to raffle_path
      else
        render :new
      end
    
    end
  
    private

    def raffle_params
     params.require(:raffle).permit(:title, user_attributes: [:first_name, :last_name, :email, :address, :phone_number, :phone_type])
    end    
    
       
end
