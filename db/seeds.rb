require 'faker'
require 'markdown'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts 'Cleaning database...'
Article.destroy_all
# Ask how to start filling the database from the beggining? db:drop

puts 'Creating 10 fake articles...'
10.times do
  Article.create(
    title: Faker::Book.title,
    content: Faker::Simpsons.quote
  )
end

# puts Kramdown::Article.new(text).to_html => Ask how u use markdown?

puts 'Finished!'


