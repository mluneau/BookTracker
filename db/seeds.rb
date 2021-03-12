# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Running the seed... GO!"

puts "Emptying Books..."
Book.destroy_all
puts "Emptying Users..."
User.destroy_all
puts "Emptying Readings..."
Reading.destroy_all

puts "Creating Users"
max_booktracker = User.create!(first_name: "Maxence", last_name: "Luneau", email: "maxence@booktracker.com", password: "password")
test_booktracker = User.create!(first_name: "Test", last_name: "Persona", email: "test@booktracker.com", password: "password")

puts "Creating Books"
travel1 = Book.create!(title: "Petit traité sur l'immensité du monde", author: "Sylvain Tesson", category: "travel", description: "Pensées philosiphique sur le monde urbain d'aujourd'hui et se distancier afin de 'vagabonder'.", language: "french")
thriller1= Book.create!(title: "The fourth protocol", author: "Frederick Forsyth", category: "thriller", description: "Cold war diplomates are investigated as Russia prepares an assault on England during the presendential elections to push for Communism", language: "english")
travel2 = Book.create!(title: "Ebènes, aventures africaines", author: "Ryszard Kapuscinski", category: "travel", description: "Voyages en afrique au coeur des didactures à la suite de leurs indépendance colonialle", language: "french")
fantastic1 = Book.create!(title: "Rhythm of War, Stormlight archives", author: "Brandon Sanderson", category: "fantastic", description: "4th opus of the Stormlight archives, follow the fight of the Radiants to reverse Odium's presence on Roshar", language: "english")

puts "Creating Readings"
Reading.create!(start_date: "04/01/2021", end_date: "11/01/2021", rating: 7, status: "finished", book_id: travel1.id, user_id: max_booktracker.id)
Reading.create!(start_date: "11/01/2021", end_date: "26/01/2021", rating: 8, status: "finished", book_id: thriller1.id, user_id: max_booktracker.id)
Reading.create!(start_date: "26/01/2021", end_date: "19/02/2021", rating: 7, status: "finished", book_id: travel2.id, user_id: max_booktracker.id)
Reading.create!(start_date: "02/02/2021", end_date: "23/01/2021", rating: 10, status: "finished", book_id: fantastic1.id, user_id: max_booktracker.id)

puts "Seeding finished!"
