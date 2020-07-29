class SessionsController < ApplicationController
    def welcome
    end   
    
    def login 
    end    

    def create
        #you should find the user in the DB first
        @user = User.find_by(email: params[:user][:email])
        #then validate password
        if @user && @user.authenticate(params[:user][:password]) 
            session[:user_id] = @user.id
            #session[:email] = params[:email]
            redirect_to user_path(@user)
        else
            flash[:error] = "Login invalid, please try again"
        redirect_to login_path
        end
    end

    def logout
        session.delete[:user_id]
        redirect_to '/'
    end   

    private 
     def session_params 
        params.require('session').permit(:email, :password)        
end

