# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

Pet.destroy_all
puts 'Deleting Pets...'
puts 'Creating Pet....'

10.times do |i|
  puts i
  puts name = Faker::Creature::Dog.unique.name
  puts address = Faker::Games::Pokemon.unique.location
  puts species = Pet::SPECIES.sample
  pet = Pet.new(
    name: name,
    address: address,
    species: species
  )
  puts pet.save!

end
