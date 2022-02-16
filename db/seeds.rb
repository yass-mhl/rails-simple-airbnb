# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Destroy all flats.......'

Flat.destroy_all

pic = 'https://source.unsplash.com/300x300/?flats'
puts 'Start seeding.........'
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  picture_url: pic,
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
puts 'create the 1st flats'
3.times {
  Flat.create!(
    name: Faker::Commerce.department(max: 5),
    address: Faker::Address.street_address,
    picture_url: pic,
    description: Faker::TvShows::GameOfThrones.quote,
    price_per_night: rand(30..120),
    number_of_guests: rand(1..5)
  )
  puts "create 1 flat"
}

puts 'finish seeding'
