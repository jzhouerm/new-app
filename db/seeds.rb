# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all 
# Registration.destroy_all 
# Event.destroy_all 
# Location.destroy_all 
# Interest.destroy_all 

# puts "seeds destroyed..."

# 5.times do 
    
#     User.create({name: Faker::Name.name, email: Faker::Internet.email, img_url: "https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png", password: "123"})
# end

# Location.create({city: "New York City"})
# Location.create({city: "Chicago"})
# Location.create({city: "Atlanta"})
# Location.create({city: "Philadelphia"})
# Location.create({city: "Boston"})
# Location.create({city: "Hartford"})
# Location.create({city: "Portland"})
# Location.create({city: "Washington D.C."})
# Location.create({city: "Charleston"})
# Location.create({city: "Jersey City"})
# Location.create({city: "Long Island"})
# Location.create({city: "Manchester"})

# Interest.create({name: "Career & Business", description: "N/A"})
# Interest.create({name: "Entertainment", description: "N/A"})
# Interest.create({name: "Charity & Causes", description: "N/A"})
# Interest.create({name: "Music", description: "N/A"})


# User.create({name: "Yuliya", email: "yuliya@gmail.com", img_url: "https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png", password: "123"})
# User.create({name: "Jules", email: "jules@gmail.com", img_url: "https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png", password: "123"})
# User.create({name: "1", email: "1", img_url: "https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png", password: "1"})

# puts "user,location, interest seeds created..."

# #Business Events
# Event.create({name: "US Real Estate Post 2020 Recession", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "Stefan Tsvetkov, MS Financial Engineering, will explore the state of valuations in U.S. private residential real estate, by means of internally derived metrics and external vendor reports. Event Start Time: 6:30PM", user_id: User.all.sample.id, interest_id: Interest.first, img_url: "https://secure-content.meetupstatic.com/images/classic-events/490992991/250x140.webp"})

# puts "events seeds created..."

# 10.times do
#     Registration.create({event_id: Event.all.sample.id, user_id: User.all.sample.id})    
# end
# puts "registration seeds created..."

User.destroy_all 
Registration.destroy_all 
Event.destroy_all 
Location.destroy_all 
Interest.destroy_all 

puts "seeds destroyed..."
30.times do
User.create({name: Faker::Name.name, email: Faker::Internet.email, img_url: "https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png", password: "123"})
end


Interest.create({name: "Business", description: "N/A"})
Interest.create({name: "Entertainment", description: "N/A"})
Interest.create({name: "Charity & Causes", description: "N/A"})
Interest.create({name: "Tech", description: "N/A"})
Interest.create({name: "Health & Wellness", description: "N/A"})

Location.create({city: "New York City"})
Location.create({city: "Chicago"})
Location.create({city: "Atlanta"})
Location.create({city: "Philadelphia"})
Location.create({city: "Boston"})
Location.create({city: "Washington D.C."})
Location.create({city: "Jersey City"})
Location.create({city: "Long Island"})
Location.create({city: "Online"})

puts "user,location, interest seeds created..."

User.create({name: "Yuliya", email: "yuliya@gmail.com", img_url: "https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png", password: "123"})
User.create({name: "Jules", email: "jules@gmail.com", img_url: "https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png", password: "123"})
User.create({name: "1", email: "1", img_url: "https://www.pngkey.com/png/detail/115-1150152_default-profile-picture-avatar-png-green.png", password: "1"})

#Business
Event.create({name: "US Real Estate Post 2020 Recession", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "Stefan Tsvetkov, MS Financial Engineering, will explore the state of valuations in U.S. private residential real estate, by means of internally derived metrics and external vendor reports. Event Start Time: 6:30PM", user_id: User.all.sample.id, interest_id: Interest.first.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/490992991/250x140.webp"})
Event.create({name: "Investing in Real Estate", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "Everyone is talking about investing in Real Estate NOTES but what are they? Join us we dive right into them! Event Start Time: 7:00PM", user_id: User.all.sample.id, interest_id: Interest.first.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/491120964/220x140.webp"})
Event.create({name: "Real Estate Investors Expo", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "Have you ever wanted to meet and learn from the top investors in the state? If yes, then this is an event not to miss! At this one day expo, the TOP local wholesalers, fix and flip, cashflow and commercial investors will be sharing with us what is working and not working in today's market! Event Start Time: 9:00AM", user_id: User.all.sample.id, interest_id: Interest.first.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/489331261/220x140.webp"})
Event.create({name: "Generational Wealth", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "Just want to get a chance to meet everyone who joined and start with some basics of note investing. From 6:00PM to 8:00PM", user_id: User.all.sample.id, interest_id: Interest.first.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/491441513/220x140.webp"})
#Entertainment
Event.create({name: "Marvel Comics vs DC Comics", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "Marvel and DC Comics have dominated the comic-book and movies industries for over 6 decades. Which of the two fiction universes do you prefer? Check out our teams of debaters to find out which universe wins! From 6:00PM to 8:00PM", user_id: User.all.sample.id, interest_id: Interest.second.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/491533289/220x140.webp"})
Event.create({name: "Musician Network & Jam Session", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "We meet play, sing, and chill. There will be drums and keys there so bring your guitar, horn, voice, etc From 8:00PM to 10:00PM", user_id: User.all.sample.id, interest_id: Interest.second.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/474704456/220x140.webp"})
Event.create({name: "Shadow @ Netflix Party", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "Synopsis: A tale of intrigue and arms set in ancient China. To finally achieve victory over a rival kingdom, a general devises an intricate political deception involving his wife, a secret look-alike, and two kings. New members are of course welcome to join. From 7:00PM to 10:00PM", user_id: User.all.sample.id, interest_id: Interest.second.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/491532537/220x140.webp"})
Event.create({name: "The Return of Quarantine Karaoke", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "New room. No theme other than if you've had something bottled up come and let it out. If you just wanna sing a tune, nothing fancy that's why we're back too. From 7:00PM to 10:00PM", user_id: User.all.sample.id, interest_id: Interest.second.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/490525286/220x140.webp"})
#Charity & Causes
Event.create({name: "BLM Group for White Allies", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "We'll discuss what we learned about what our individual states have planned in the area of reparation bills, considerations, etc. Please RSVP if you plan to attend. Look forward to seeing you then! From 10:00AM to 12:00PM", user_id: User.all.sample.id, interest_id: Interest.third.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/490742785/220x140.webp"})
Event.create({name: "Carbon Removal Meetup ", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "We are delighted to welcome Paul Gambill who is the CEO of Nori, which is a carbon removal marketplace creating a new way for anyone in the world to pay to remove excess carbon dioxide from the atmosphere. From 6:00PM to 8:00PM", user_id: User.all.sample.id, interest_id: Interest.third.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/490608515/220x140.webp"})
#Tech
Event.create({name: "Rock Solid Python for Beginners", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "The course will provide a solid foundation using current programming methods. Users can expect to learn best practices for Python so they can make their programs cleaner and more maintainable. From 5:30pm-9:30pm", user_id: User.all.sample.id, interest_id: Interest.fourth.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/491143348/220x140.webp"})
Event.create({name: "Coffee & Code", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "Join us for a Coffee & Code on Saturday, August 15th from 9:00am - 12:00pm!", user_id: User.all.sample.id, interest_id: Interest.fourth.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/488056858/220x140.webp"})
Event.create({name: "Power Platform Monthly Meeting", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "Reaching out to presenters now. Will email you all when presentation finalized! From 6:00PM to 8:00PM", user_id: User.all.sample.id, interest_id: Interest.fourth.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/475324044/220x140.webp"})
Event.create({name: "Quantified Self Meetup", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "For those that aren't familiar with it, Quantified Self is an international community of users and makers of self-tracking tools who share an interest in “self-knowledge through numbers.” RSVP Now! Event Start Time: 6:30PM", user_id: User.all.sample.id, interest_id: Interest.fourth.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/490459877/220x140.webp"})
Event.create({name: "Data Science Meetup", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "Meet one of Galvanize’s recent graduates and hear their perspective about the Data Science program! 6:00PM to 7:00PM", user_id: User.all.sample.id, interest_id: Interest.fourth.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/491426309/220x140.webp"})
#Health & Wellness
Event.create({name: "World Peace Meditation", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "The WPM is a unique opportunity to be a channel of transformation for the Earth and humanity in this transitional time. The purpose behind the WPM is to expand the vibration of peace in the collective consciousness so that Truth Consciousness can manifest and the current cycle of evolution can continue to unfold. From 8:30 PM to 9:30 PM", user_id: User.all.sample.id, interest_id: Interest.fourth.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/491455794/220x140.webp"})
Event.create({name: "Meditation Practice", date: Faker::Date.forward(days: 30), location_id: Location.all.sample.id, description: "This class offers you unique tips and techniques to deepen your meditation practice. From 6:00PM to 7:00PM", user_id: User.all.sample.id, interest_id: Interest.fourth.id, img_url: "https://secure-content.meetupstatic.com/images/classic-events/491534958/220x140.webp"})


90.times do
Registration.create({event_id: Event.all.sample.id, user_id: User.all.sample.id})    
end

puts "events and registration seeds created..."
