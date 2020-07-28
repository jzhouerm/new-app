class SessionsController < ApplicationController

    def new
        @errors = flash[:my_errors]
    end

    def create #looks up user in db, verify login, store auth. user's id in the session
        @user = User.find_by(email: params[:email])
        if @user && user.authenticate(params[:password])
            session[:user_id] = @user.id 
            redirect_to events_path
        else
            flash[:errors] = "Incorrect username or password"
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:user_id)
        @current_user = nil 
        redirect_to root_path 
    end


end
