class SessionsController < ApplicationController
skip_before_action :authorized, only: [:new, :create]

    def new
    end

    def create #login - looks up user in db, verify login, store auth. user's id in the session
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password]) #find user or authenticate by grabbing pw_digest from user
            session[:user_id] = @user.id 
        
            redirect_to user_path(@user)
        else
            flash[:errors] = "Username or password is incorrect"
            redirect_to new_session_path
        end
    end

    def logout
        session.delete(@current_user.id)
        @current_user = nil 
    
        redirect_to new_session_path

    end

    def reset_page
        cookies[:page_count] = 0
        
        redirect_back fallback_location: events_path
      end


end
