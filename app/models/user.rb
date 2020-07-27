class User < ApplicationRecord
    has_many :registrations 
    has_many :events, through: :registrations 
end
