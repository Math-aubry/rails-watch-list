# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Movie.destroy_all

10.times do
  new_movie = Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote, poster_url: Faker::Internet.url, rating: Faker::Number.within(range: 1..10))
end

puts 'Finished!'


#installer gem "open-uri" dans GemFile
#require "open-uri"
# URI.open("https://tmdb.lewagon.com/movie/top_rated").read
# movies_api = JSON.parse(URI.open("https://tmdb.lewagon.com/movie/top_rated").read)
# movies_api["results"].each do |movie|
#     Movie.create!(title: movie["original_title"], overview: movie["overview"], poster_url: movie["poster_path"],rating: movie["vote_average"])
# end
