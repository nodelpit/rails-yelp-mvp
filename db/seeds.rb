# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(
 name: "Dishoom",
 address: "7 Boundary St, London E2 7JE",
 phone_number: "0044 7123 456789",
 category: "french"
)

Restaurant.create!(
 name: "Pizza East",
 address: "56A Shoreditch High St, London E1 6PQ",
 phone_number: "0044 7987 654321",
 category: "italian"
)

Restaurant.create!(
 name: "Dragon d'Or",
 address: "8 rue de la Soie, Paris",
 phone_number: "01 43 54 23 31",
 category: "chinese"
)

Restaurant.create!(
 name: "Sushi Shop",
 address: "23 rue du Commerce, Brussels",
 phone_number: "02 513 12 43",
 category: "japanese"
)

Restaurant.create!(
 name: "Frites Maison",
 address: "Place Flagey 12, Brussels",
 phone_number: "02 511 45 67",
 category: "belgian"
)

puts "Finished!"
