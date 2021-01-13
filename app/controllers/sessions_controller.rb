class SessionsController < ApplicationController
    def welcome
    end   
    
    def login 
    end    

    def create
        #you should find the user in the DB first
        @user = User.find_by(email: session_params[:email])
        #then validate password
        if @user && @user.authenticate(session_params[:password]) 
            session[:user_id] = @user.id
            #session[:email] = params[:email]
            redirect_to user_path(@user)
        else
            flash[:error] = "Login invalid, please try again"
        redirect_to login_path
        end
    end

    def logout
        session.clear
        redirect_to login_path
       
        # session.delete
        # redirect_to '/'
    end   

    private 
     def session_params 
        params.require(:user).permit(:email, :password) 
     end           
end

