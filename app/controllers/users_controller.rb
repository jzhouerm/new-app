class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

    def index
        @users = User.all
    end

    def new
        @user = User.new 
        @errors = flash[:my_errors] 
    end

    def show 
        @events = Event.all
        @created_events = @events.select { |event|  event.user_id == current_user.id } 

        if current_user
        render :show 
        else 
        flash[:my_errors] = "Please log in to view your profile."
        redirect_to login_path
        end

    end

    def create
        user = User.create(strong_params)
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:errors] = user.errors.full_messages 
            redirect_to new_user_path      
        end
    end

    private

    def strong_params
        params.require(:user).permit(:name, :email, :img_url, :password)
    end

end
