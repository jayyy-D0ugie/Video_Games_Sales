class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :game_name
      t.integer :year_of_release
      t.decimal :critic_score
      t.decimal :user_score
      t.references :genre, null: false, foreign_key: true
      t.references :publisher, null: false, foreign_key: true
      t.references :developer, null: false, foreign_key: true
      t.references :platform, null: false, foreign_key: true

      t.timestamps
    end
  end
end
