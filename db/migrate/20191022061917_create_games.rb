class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :game_name
      t.integer :year_of_release
      t.decimal :critic_score
      t.decimal :user_score
      t.references :genre_name, null: false, foreign_key: true
      t.references :publisher_name, null: false, foreign_key: true
      t.references :developer_name, null: false, foreign_key: true
      t.references :platform_name, null: false, foreign_key: true
      t.references :game_rank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
