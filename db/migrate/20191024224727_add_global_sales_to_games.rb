class AddGlobalSalesToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :global_sales, :decimal
    add_referece :games, :global_sales, null: true, foreign_key: true
  end
end
