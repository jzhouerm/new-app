class Event < ApplicationRecord
    has_many :registrations 
    has_many :users, through: :registrations 
    belongs_to :user 
    belongs_to :location
    belongs_to :interest 

end
