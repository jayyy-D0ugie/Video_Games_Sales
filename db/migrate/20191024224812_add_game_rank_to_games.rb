class AddGameRankToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :game_rank, :integer
    add_referece :games, :game_rank, null: true, foreign_key: true
  end
end
