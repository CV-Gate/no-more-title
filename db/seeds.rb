# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Book.all.size == 0
  title_sources = %w{Faker::Hipster.sentences(1)[0] Faker::ChuckNorris.fact Faker::Book.title Faker::Hacker.say_something_smart Faker::Space.star}
  author_sources = %w{Faker::Superhero.name Faker::StarWars.character Faker::GameOfThrones.character Faker::Book.author Faker::Pokemon.name}
  1000.times do
    ti = rand 5
    ai = rand 5
    Book.create!(title: eval(title_sources[ti]), author: eval(author_sources[ai]))
  end
end