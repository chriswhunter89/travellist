# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
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
task_4 = Task.create!(destination: destination_b, title: "Full day tour", notes: "Whole day tour with getyourguide.co.uk. Check site for what to bring with.")
task_5 = Task.create!(destination: destination_c, title: "Overnight Kruger Safari", notes: "Breakfast & dinner included. Get a pic with an elephant!")
task_6 = Task.create!(destination: destination_c, title: "Hot air baloon", notes: "Blyde River Canyon hot air ballon ride")
task_7 = Task.create!(destination: destination_d, title: "Yosemite group day trip", notes: "See giant redwoods, El Capitan, and Half Dome. Lunch provided")
task_8 = Task.create!(destination: destination_d, title: "Lunch at Cottage Point Inn", notes: "Seaplane flight followed by three-course gourmet meal surrounded by sea views in the middle of the Ku-ring-gui Chase National Park")
task_9 = Task.create!(destination: destination_e, title: "Sydney Cricket Ground Tour", notes: "Behind the Scenes Walking tour. Parts of the tour are outdoors so bring raincoat if it's wet!")
