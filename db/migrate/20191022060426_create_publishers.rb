class CreatePublishers < ActiveRecord::Migration[6.0]
  def change
    create_table :publishers do |t|
      t.string :publisher_name
      t.integer :games_from_publisher

      t.timestamps
    end
  end
end
