class Event < ApplicationRecord
    has_many :registrations 
    has_many :users, through: :registrations 
    belongs_to :user 
    belongs_to :location
    belongs_to :interest 


    validates :name, presence: true, uniqueness: { scope: :location_id,
    message: 'Event with the same name is already exist'}
    validates :location_id, presence: true
    validates :description, presence: true, length: { minimum: 20 }
    validates :interest_id, presence: true
    validates :img_url, presence: true

 
    
end
