# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Flat.destroy_all

puts 'Creating locations'

4.times do
  flat = Flat.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    description: Faker::House.room,
    price_per_night: rand(55..125),
    number_of_guests: rand(2..10),
    picture_url: Faker::LoremFlickr.image(search_terms: %w[hotel])
  )
  puts "location #{flat.id} has been created"
end
