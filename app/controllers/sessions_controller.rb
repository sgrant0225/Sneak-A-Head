class SessionsController < ApplicationController
    
    def signup
      @user = User.new
    end   

    def create  
      #binding.pry
      if auth_hash != nil
          @user = User.find_or_create_from_auth_hash(auth_hash)
          session[:user_id] = @user.id
          redirect_to user_path(@user)
      else  
        @user = User.new(session_params)
      if @user.save #persist to the database
         flash[:notice] = "Success"
         session[:user_id] = @user.id
          redirect_to user_path(@user)
      else
         flash[:error] = @users.errors.full_messages
         render :signup
       end
      end  
    end
    
    def login 
      @user = User.new
    end 
    
    def new
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
    
     def welcome
     end   

    def logout
        session.clear
        redirect_to '/'
    end   

    private 
     def session_params 
        params.require(:user).permit(:first_name, :last_name, :email, :password) 
     end        
     
     def auth_hash
      request.env['omniauth.auth']
     end   

     
end

