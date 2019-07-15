# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Combattant.destroy_all

puts 'Creating combattants...'
combattants_attributes = [
  {
    nom: "Iron Man",
    points_de_vie: 85,
    points_d_attaque: 17 
  },
  {
    nom: "Surfer d'Argent",
    points_de_vie: 90,
    points_d_attaque: 18 
  }
]

Combattant.create!(combattants_attributes)

puts 'Finished!'
