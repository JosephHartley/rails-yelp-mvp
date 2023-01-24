# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "The Happy Sumo", address: "7 Boundary St, London E2 7JE", category: "japanese"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
h2u = {name: "H-2-U", address: "25 Staplehurst Rd, London SE13 5ND", category: "chinese"}
casse = {name: "Casse-Croûte", address: "109 Bermondsey St, London SE1 3XB", category: "french"}
lowlander = {name: "Lowlander Grand Cafe
  ", address: "36 Drury Ln, London WC2B 5RR", category: "belgian"}

[dishoom, pizza_east, h2u, casse, lowlander].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
