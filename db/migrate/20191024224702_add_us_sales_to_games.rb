class AddUsSalesToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :us_sales, :decimal
    add_referece :games, :us_sales, null: true, foreign_key: true
  end
end
