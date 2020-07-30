class User < ApplicationRecord
    has_secure_password
    has_many :registrations 
    has_many :events, through: :registrations 

    validates :name, presence: true 
    validates :email, presence: true, uniqueness: {message: ' : User with the same email address already exists!'}

end
