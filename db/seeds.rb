# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'csv'

Developer.destroy_all
Genre.destroy_all
Platform.destroy_all
Publisher.destroy_all
Sale.destroy_all
Game.destroy_all

csv_file = Rails.root + 'db/Video_Games_Sales_as_at_22_Dec_2016.csv'
games = SmarterCSV.process(csv_file, col_sep: ' ')

games[1..400].each do |game|
  d = Developer.find_or_create_by(developer_name: game[:developer])
  pub = Publisher.find_or_create_by(publisher_name: game[:publisher])
  g = Genre.find_or_create_by(genre_name: game[:genre])
  pl = Platform.find_or_create_by(platform_name: game[:platform])

  d.games.create(
    game_name: game[:name],
    year_of_release: game[:year_of_release],
    critic_score: game[:critic_score],
    user_score: game[:user_score],
    jp_sales: game[:jp_sales],
    us_sales: game[:us_sales],
    global_sales: game[:global_sales],
    game_rank: game[:game_rank],
    developer: d,
    publisher: pub,
    genre: g,
    platform: pl
  )

end

puts "Generated #{Developer.count} developers."
puts "Generated #{Game.count} games."
puts "Generated #{Genre.count} genres."
puts "Generated #{Platform.count} platforms."
puts "Generated #{Publisher.count} publishers."
puts "Generated #{Sale.count} sales."