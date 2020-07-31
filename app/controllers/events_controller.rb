class EventsController < ApplicationController

    skip_before_action :authorized, only: [:index] 
 
    def index 
    if current_user
    @events = Event.search(params[:search])
    end
    end
    


    def show
    @event = Event.find(params[:id])
    @registrations = @event.registrations.each do |reg| reg.user.name
    end
    end

    def new 
        @event = Event.new
    end

    def create 

        @event = Event.create(event_params)
        if @event.valid?
        
        redirect_to event_path(@event) 

        else 
        @errors = @event.errors.full_messages
        render :new
        end
    end

    def edit 
        @event = Event.find(params[:id])
    end 

    def update 
        @event = Event.find(params[:id])
        @event.update(event_params)
        if @event.valid?
            redirect_to event_path(@event) 
        else 
            @errors = @event.errors.full_messages
            render :edit
        end 
    end

    def destroy
         @event = Event.find(params[:id])
         @event.destroy 
        redirect_to user_path(@event.user_id)
    end

    

   private 

   def event_params
   params.require(:event).permit(:name, :date, :location_id, :description, :user_id, :interest_id, :img_url, :search)
   end

end
