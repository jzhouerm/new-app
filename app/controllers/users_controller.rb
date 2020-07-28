class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new 
        @errors = flash[:my_errors] 
    end

    def show 
        @user = User.find(params[:id])
    end

    def create
        @user = User.create(strong_params)

    end

    private

    def strong_params
        params.require(:user).permit(:name, :email, :img_url)
    end

end
