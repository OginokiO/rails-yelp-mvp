# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed: 5 restaurantes válidos con categorías de la lista permitida
Restaurant.create!(
  name: "Epicure",
  address: "75008 Paris",
  phone_number: "+33 1 23 45 67 89",
  category: "french"
)

Restaurant.create!(
  name: "La Bella Vita",
  address: "Via Roma 12, Roma",
  phone_number: "+39 06 1234 5678",
  category: "italian"
)

Restaurant.create!(
  name: "Sakura",
  address: "Shibuya, Tokyo",
  phone_number: "+81 3 1234 5678",
  category: "japanese"
)

Restaurant.create!(
  name: "Golden Dragon",
  address: "Chinatown, San Francisco",
  phone_number: "+1 415 123 4567",
  category: "chinese"
)

Restaurant.create!(
  name: "Le Plaza",
  address: "Grand Place, Brussels",
  phone_number: "+32 2 123 45 67",
  category: "belgian"
)
