# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Robot.create(name: Faker::StarWars.droid, has_sentience: true, has_wheels: true, has_tracks: true, number_of_rotors: 20, status: 'paint scratched')
end

20.times do
  Robot.create(name: Faker::StarWars.droid, has_sentience: true, has_wheels: true, has_tracks: true, number_of_rotors: 20, status: 'loose screws')
end

20.times do
  Robot.create(name: Faker::StarWars.droid, has_sentience: true, has_wheels: true, has_tracks: true, number_of_rotors: 20, status: 'on fire')
end

20.times do
  Robot.create(name: Faker::StarWars.droid, has_sentience: true, has_wheels: true, has_tracks: true, number_of_rotors: 20, status: 'rusty', colour: 'blue')
end

20.times do
  Robot.create(name: Faker::StarWars.droid, has_sentience: true, has_wheels: true, has_tracks: true, number_of_rotors: 20, status: nil)
end
