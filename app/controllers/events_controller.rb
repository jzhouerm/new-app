class EventsController < ApplicationController
    # before_action :require_login
    # skip_before_action :require_login, only: [:index, :show] 
    # disabled it, so we can have access without login while working and testing
 
def index 
    # @events = Event.all
    @events = Event.search(params[:search])
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

        def destroy
            @event = Event.find(params[:id])
            @event.destroy 
            redirect_to events_path
        end
    end

   private 

   def event_params
   params.require(:event).permit(:name, :date, :location_id, :description, :user_id, :interest_id, :img_url, :search)
   end

   def require_login
   redirect_to  unless session.include? :user_id
   end

end
