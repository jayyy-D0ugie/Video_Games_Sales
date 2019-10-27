class AddJpSalesToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :jp_sales, :decimal
    add_referece :games, :jp_sales, null: true, foreign_key: true
  end
end
