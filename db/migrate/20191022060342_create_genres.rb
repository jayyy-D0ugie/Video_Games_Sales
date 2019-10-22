class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :genre_name
      t.integer :games_in_category

      t.timestamps
    end
  end
end
