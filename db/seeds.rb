# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "01 43 54 23 31"  }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese", phone_number: "01 43 54 23 32" }
dishooma = { name: "Dishooma", address: "7 Boundary St, London E2 7JE", category: "italian", phone_number: "01 43 54 23 41"  }
pizza_west =  { name: "Pizza West", address: "56A Shoreditch High St, London E1 6PQ", category: "french", phone_number: "01 43 54 23 33" }
Rishoom = { name: "Rishoom", address: "7 Boundary St, London E2 7JE", category: "japanese", phone_number: "01 43 54 23 30"  }
pasta_east =  { name: "Pasta East", address: "56A Shoreditch High St, London E1 6PQ", category: "belgian", phone_number: "01 43 54 23 35" }
[ dishoom, pizza_east, dishooma, pizza_west, pasta_east, Rishoom ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"