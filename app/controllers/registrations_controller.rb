class RegistrationsController < ApplicationController
    

    def new
        @registration = Registration.new
    end

    def create 
        @registration=Registration.create(registration_params)

     if @registration.valid?
        redirect_to event_path(@registration.event_id)
     else 
        @errors = @registration.errors.full_messages 
        render :new
    end
    end

    def destroy 
        @registration = Registration.find(params[:id])
        @registration.destroy 
    end

    private 
    def registration_params
    params.require(:registration).permit(:user_id, :event_id) 
    end
end
