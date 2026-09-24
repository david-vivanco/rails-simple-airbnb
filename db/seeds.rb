# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#
# 1. Clean the database 🗑️
puts "Cleaning database..."
Flat.destroy_all

# 2. Create the instances 🏗️
puts "Creating Flats..."
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
puts "Created a flat in London"

Flat.create!(
  name: 'Spacious 100m² near Eiffel Tower Flat in Paris',
  address: '73 rue de l Assomption, 75016 Paris',
  description: 'If you want to explore Paris, this beautiful appartment combines proximity to major attractions and the calmness of a residential neighbourhood. Two double bedrooms, open plan living area, large kitchen, and two balconies',
  price_per_night: 125,
  number_of_guests: 5
)
puts "Created a flat in Paris"

Flat.create!(
  name: 'Cozy & Spacious Shared Garden Flat in Paris',
  address: '50 rue du Ranelagh, 75016 Paris',
  description: 'A lovely summer feel for this spacious garden flat. One double bedrooms, open plan living area, and large kitchen',
  price_per_night: 80,
  number_of_guests: 2
)
puts "Created a flat in Paris"

Flat.create!(
  name: 'Tropical Sunset House in Gran Canaria',
  address: 'c/ La Graciosa 19, 35100 Maspalomas',
  description: 'Make a break to your winter and enjoy sunny days from this magnificent villa. Four double bedrooms, open plan living area, large kitchen, terrace, garden, and sports court; just 10 minutes away from the beach.',
  price_per_night: 250,
  number_of_guests: 8
)
puts "Created a flat in Gran Canaria"

# 3. Display a message 🎉
puts "Finished! Created #{Flat.count} Flats."

# 4. Terminal: rails db:seed
