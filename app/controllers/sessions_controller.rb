class SessionsController < ApplicationController
# skip_before_action :authorized, :only 
    def new
        @errors = flash[:my_errors]
    end

    def login
    end


    def create #looks up user in db, verify login, store auth. user's id in the session
        @user = User.find_by(email: params[:email])
        if @user && user.authenticate(params[:password]) #find user or authenticate by grabbing pw_digest from user
            session[:user_id] = @user.id 
            redirect_to events_path
        else
            flash[:errors] = "Username or password is incorrect"
            redirect_to login_path
        end
    end

    def destroy
        session.delete(:user_id)
        @current_user = nil 
        redirect_to root_path 
    end


end
