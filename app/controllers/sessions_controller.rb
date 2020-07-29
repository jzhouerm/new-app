class SessionsController < ApplicationController
skip_before_action :authorized, only: [:new, :create]

    def new
        @errors = flash[:errors]
        render :new
    end
      
      def logout 
        # session[:user_id] = nil 
        session.delete(:user_id)
        redirect_to new_user_path
    
      end 

    def create #looks up user in db, verify login, store auth. user's id in the session
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password]) #find user or authenticate by grabbing pw_digest from user
            session[:user_id] = @user.id 
            redirect_to events_path
        else
            flash[:errors] = "Username or password is incorrect"
            redirect_to new_user_path
        end
    end

    def destroy
        session.delete(:user_id)
        @current_user = nil 
        redirect_to root_path 
    end


end
