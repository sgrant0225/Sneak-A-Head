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
      @raffle.user = current_user
      #binding.pry
      if @raffle.save!
       redirect_to raffle_path(@raffle)
      else
        render :new
      end
    
    end
     
    def destroy
      @raffle = Raffle.find(params[:id]).destroy
       redirect_to raffle_path(@raffle)

    end  


    private

    def raffle_params
     params.require(:raffle).permit(user_attributes: [:first_name, :last_name, :email, :address, :phone_number, :phone_type])
    end    
    
       
end
