class PagesController < ApplicationController
    def home
        @events = Event.search(params[:search]) #:search must be permitted in EventsController strong params
    end

end
