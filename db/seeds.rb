# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all 
Registration.destroy_all 
Event.destroy_all 
Location.destroy_all 
Interest.destroy_all 

puts "seeds destroyed..."

5.times do 

User.create({name: Faker::Name.name, email: Faker::Internet.email, img_url: "https://tcap.pbworks.com/f/1435170280/myAvatar.png", password: "123"})
Location.create({city: Faker::Address.city})
Interest.create({name: Faker::Game.genre, description: "N/A"})
end

puts "user,location, interest seeds created..."

User.create({name: "Yuliya", email: "yuliya@email.com", img_url: "https://tcap.pbworks.com/f/1435170280/myAvatar.png", password: "123"})
User.create({name: "Jules", email: "jules@email.com", img_url: "https://tcap.pbworks.com/f/1435170280/myAvatar.png", password: "123"})
User.create({name: "1", email: "1", img_url: "https://tcap.pbworks.com/f/1435170280/myAvatar.png", password: "1"})
20.times do
Event.create({name: Faker::Game.platform, date: Faker::Date.in_date_period, location_id: Location.all.sample.id, description: nil, user_id: User.all.sample.id, interest_id: Interest.all.sample.id, img_url: "https://www.brainfacts.org/-/media/Brainfacts2/Icons-3,-d-,0/Activity_Icon.png"})
Registration.create({event_id: Event.all.sample.id, user_id: User.all.sample.id})    
end

puts "events and registration seeds created..."
