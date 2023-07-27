# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

50.times do
    city = City.create(
        city_name: Faker::Address.city
    )

    dog = Dog.create(
        name: Faker::Name.first_name,
        city: city
    )

    dogsitter = Dogsitter.create(
        name: Faker::Name.first_name,
        city: city
    )

    Stroll.create(
        date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
        dog: dog,
        dogsitter: dogsitter
    )
end