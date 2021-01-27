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
     @raffle = Raffle.new(shoe_id: params[:shoe_id])
     @raffle.build_user
     #binding.pry
    end     
    
    def create 
      @raffle = Raffle.new(raffle_params)
      @raffle.user = current_user
      #binding.pry                 #@raffle.user.first_names
      if @raffle.save!
       redirect_to raffle_path(@raffle)
      else
        render :new
      end
    end
    
    def edit
      @raffle = Raffle.find_by(id: params[:id])
    end

    def update 
      @raffle = Raffle.find_by(id:params[:id])
      @raffle.update(raffle_params)
          redirect_to @raffle
    end  
     
    def destroy
      @raffle = Raffle.find(params[:id]).destroy
       redirect_to raffle_path(@raffle)
    end  


    private

    def raffle_params
     params.require(:raffle).permit(:title, :shoe_id, user_attributes: [:first_name, :last_name, :email, :address, :phone_number, :phone_type])
    end    
    
       
end
