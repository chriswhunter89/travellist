# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Memory.destroy_all
Task.destroy_all
Destination.destroy_all
Profile.destroy_all
User.destroy_all

puts "Creating users..."

##USERS##
chris = User.create!(email: "chriswhunter89@gmail.com", password: "brockroddick", first_name: "Chris", last_name: "Hunter")

puts "Creating destinations..."

##DESTINATIONS##
chris_destination_a = Destination.create!(user_id: chris.id, name: "Paris", address: "Paris, France", longitude: 48.85917479675662, latitude: 2.294652964147923, visited: false)
chris_destination_b = Destination.create!(user_id: chris.id, name: "Machu Picchu", address: "08680, Peru", longitude: -13.162117399216195, latitude: -72.54453374836272, visited: false)
chris_destination_c = Destination.create!(user_id: chris.id, name: "Kruger National Park", address: "Sabie River, South Africa", longitude: -23.986890021823694, latitude: 31.557127963665707, visited: true, rating: 5)

puts "Creating tasks..."

##TASKS##

chris_destination_a_task_1 = Task.create!(destination_id: chris_destination_a.id, title: "Climb the Eiffel Tower", notes: "No lift! Climb all 1665 stairs and get a pic from the top! :D")
chris_destination_a_task_2 = Task.create!(destination_id: chris_destination_a.id, title: "See the Louvre Museum", notes: "Guided tour at https://www.viator.com/tours/Paris/Skip-the-Line-Louvre-Museum-Walking-Tour-including-Venus-de-Milo-and-Mona-Lisa/d479-3731LOUVRE. Make sure to get something from the giftshop for Johnny!")
chris_destination_a_task_3 = Task.create!(destination_id: chris_destination_a.id, title: "See the Paris Catacombs", notes: "This one's gona be scary!!")
chris_destination_b_task_1 = Task.create!(destination_id: chris_destination_b.id, title: "Full day tour", notes: "Whole day tour with getyourguide.co.uk. Check site for what to bring with.")
chris_destination_c_task_1 = Task.create!(destination_id: chris_destination_c.id, title: "Overnight Kruger Safari", notes: "Breakfast & dinner included. Get a pic with an elephant!")
chris_destination_c_task_2 = Task.create!(destination_id: chris_destination_c.id, title: "Hot air baloon", notes: "Blyde River Canyon hot air ballon ride")

puts "Creating memories..."

# ##Memories##

chris_destination_a_task_1 = Memory.create!(destination_id: chris_destination_a.id, blog: "After a comfortable, if uneventful drive, an impulsive scream of excitement when the Eiffel Tower first came into view spelt
  the end for any doubt over whether we had made the right decision to go into the city for such a short time. Paris is magic. We were under the city’s spell before the coach had come to a standstill and even the rain
  couldn’t dampen our spirits. And boy, did it rain. Only in Paris does a sea of rainbow umbrellas look like art and a couple sheltering from the storm look like a scene from an Audrey Hepburn movie.")
chris_destination_a_task_2 = Memory.create!(destination_id: chris_destination_a.id, review: "One of my favorite places in France. It's breathtaking, the history and every room has so much to tell. You'll need one whole
  day to really see most of it, because the museum is really big. You must plan to be there for minimum 4 hours.")
chris_destination_b_task_1 = Memory.create!(destination_id: chris_destination_a.id, review: "Amazing and beautiful experience! If you go early in the morning there will be less people. When it's cloudy it's very majestic!
  Make sure to bring Soles for the restroom. There's only one at the entrance so there's not one inside.")
chris_destination_c_task_2 = Memory.create!(destination_id: chris_destination_a.id, review: "The sunset balloon ride met all expectations.
Booking and communications were easy, clear, and efficient. Price was reasonable. Views were breathtaking!")

puts "Done!"
