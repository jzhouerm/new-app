class RegistrationsController < ApplicationController
    

    def new
        @registration = Registration.new
    end

    def create 
        @registration=Registration.create(registration_params)
        @current_user.registrations << Registration.create(registration_params)
        redirect_to user_path(@current_user.id)
    end

    def destroy 
        @registration = Registration.find(params[:id])
        @registration.destroy 
        redirect_to user_path(@registration.user_id)
    end

    private 
    def registration_params
    params.require(:registration).permit(:user_id, :event_id) 
    end
end
