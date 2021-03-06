# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Ingredient.create(name: 'lemon')
# Ingredient.create(name: 'ice')
# Ingredient.create(name: 'mint leaves')
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

5.times do
  cocktail = Cocktail.create(
    name: Faker::Coffee.blend_name
  )
end

5.times do
  ingredient = Ingredient.create(
    name: %w[lemon ice mint leaves].sample
  )
end
