class RegistrationsController < ApplicationController
    

    def new
        @registration = Registration.new
    end

    def create 
@registration=Registration.create(params[:id])
    end
end
