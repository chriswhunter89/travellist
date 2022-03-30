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
user_a = User.create!(email: "chriswhunter89@gmail.com", password: "brockroddick", first_name: "Chris", last_name: "Hunter")
user_b = User.create!(email: "johnnyhunter89@gmail.com", password: "johnny1", first_name: "Johnny", last_name: "Hunter")

puts "Creating destinations..."

##DESTINATIONS##
destination_a = Destination.create!(user: user_a, name: "Paris", address: "Paris, France", longitude: 48.85917479675662, latitude: 2.294652964147923, visited: false)
destination_b = Destination.create!(user: user_a, name: "Machu Picchu", address: "08680, Peru", longitude: -13.162117399216195, latitude: -72.54453374836272, visited: false)
destination_c = Destination.create!(user: user_a, name: "Kruger National Park", address: "Sabie River, South Africa", longitude: -23.986890021823694, latitude: 31.557127963665707, visited: true, rating: 5)
destination_d = Destination.create!(user: user_b, name: "San Francisco", address: "San Francisco, USA", longitude: 37.77394048806191, latitude: -122.44132329402615, visited: false)
destination_e = Destination.create!(user: user_b, name: "Sydney", address: "Sydney, Australia", longitude: -33.74791454437491, latitude:  151.20659773769015, visited: false)
puts "Creating tasks..."

##TASKS##

task_1 = Task.create!(destination: destination_a, title: "Climb the Eiffel Tower", notes: "No lift! Climb all 1665 stairs and get a pic from the top! :D")
task_2 = Task.create!(destination: destination_a, title: "See the Louvre Museum", notes: "Guided tour at https://www.viator.com/tours/Paris/Skip-the-Line-Louvre-Museum-Walking-Tour-including-Venus-de-Milo-and-Mona-Lisa/d479-3731LOUVRE. Make sure to get something from the giftshop for Johnny!")
task_3 = Task.create!(destination: destination_a, title: "See the Paris Catacombs", notes: "This one's gona be scary!!")
task_1 = Task.create!(destination: destination_b, title: "Full day tour", notes: "Whole day tour with getyourguide.co.uk. Check site for what to bring with.")
task_1 = Task.create!(destination: destination_c, title: "Overnight Kruger Safari", notes: "Breakfast & dinner included. Get a pic with an elephant!")
task_2 = Task.create!(destination: destination_c, title: "Hot air baloon", notes: "Blyde River Canyon hot air ballon ride")
task_1 = Task.create!(destination: destination_d, title: "Yosemite group day trip", notes: "See giant redwoods, El Capitan, and Half Dome. Lunch provided")
task_1 = Task.create!(destination: destination_d, title: "Lunch at Cottage Point Inn", notes: "Seaplane flight followed by three-course gourmet meal surrounded by sea views in the middle of the Ku-ring-gui Chase National Park")
task_2 = Task.create!(destination: destination_e, title: "Sydney Cricket Ground Tour", notes: "Behind the Scenes Walking tour. Parts of the tour are outdoors so bring raincoat if it's wet!")

# puts "Creating memories..."

# ##Memories##

# chris_destination_a_task_1 = Memory.create!(destination_id: chris_destination_a.id, blog: "After a comfortable, if uneventful drive, an impulsive scream of excitement when the Eiffel Tower first came into view spelt
#   the end for any doubt over whether we had made the right decision to go into the city for such a short time. Paris is magic. We were under the city’s spell before the coach had come to a standstill and even the rain
#   couldn’t dampen our spirits. And boy, did it rain. Only in Paris does a sea of rainbow umbrellas look like art and a couple sheltering from the storm look like a scene from an Audrey Hepburn movie.")
# chris_destination_a_task_2 = Memory.create!(destination_id: chris_destination_a.id, review: "One of my favorite places in France. It's breathtaking, the history and every room has so much to tell. You'll need one whole
#   day to really see most of it, because the museum is really big. You must plan to be there for minimum 4 hours.")
# chris_destination_b_task_1 = Memory.create!(destination_id: chris_destination_a.id, review: "Amazing and beautiful experience! If you go early in the morning there will be less people. When it's cloudy it's very majestic!
#   Make sure to bring Soles for the restroom. There's only one at the entrance so there's not one inside.")
# chris_destination_c_task_2 = Memory.create!(destination_id: chris_destination_a.id, review: "The sunset balloon ride met all expectations.
# Booking and communications were easy, clear, and efficient. Price was reasonable. Views were breathtaking!")
# johnny_destination_a_task_1 = Memory.create!(destination_id: johnny_destination_a.id, review: "Really enjoyed the trip. Our guide Brian was just awesome. The one day trip is perfecrly timed with all the main attractions in the valley covered. Brian made sure that we had all the best photo opportunities.
#   We also learnt a lot about the geology of Yossmite and the history of rock-climbing in Yosemite during our ride to and from the park. ")

puts "Done!"
