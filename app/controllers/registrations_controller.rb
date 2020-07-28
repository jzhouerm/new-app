class RegistrationsController < ApplicationController
    

    def new
        @registration = Registration.new
    end

    def create 
@registration=Registration.create(registration_params)
redirect_to event_path(@registration.event_id)
    end

    private 
    def registration_params
    params.require(:registration).permit(:user_id, :event_id) 
    end
end
