class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.integer :game_rank
      t.decimal :na_sales
      t.decimal :jp_sales
      t.decimal :global_sales
      t.references :game_name, null: false, foreign_key: true
      t.references :developer_name, null: false, foreign_key: true
      t.references :publisher_name, null: false, foreign_key: true
      t.references :genre_name, null: false, foreign_key: true
      t.references :platform_name, null: false, foreign_key: true

      t.timestamps
    end
  end
end
