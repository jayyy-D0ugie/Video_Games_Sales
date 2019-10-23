# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Developer.destroy_all
Game.destroy_all
Genre.destroy_all
Platform.destroy_all
Publisher.destroy_all
Sale.destroy_all

csv_file = Rails.root + 'db/Video_Games_Sales_as_at_22_Dec_2016.csv'
options = { file_encoding: 'iso-8859-1' }
developers = SmarterCSV.process(csv_file)
games = SmarterCSV.process(csv_file)
genres = SmarterCSV.process(csv_file)
platforms = SmarterCSV.process(csv_file)
publishers = SmarterCSV.process(csv_file)
sales = SmarterCSV.process(csv_file)

developers.each do |developer|
  developer_name: developer
end