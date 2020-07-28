class EventsController < ApplicationController

def index 
    @events = Event.all
end

def show
    @event = Event.find(params[:id])
    @registrations = @event.registrations.each do |reg| reg.user.name
    end
end


end
