# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_22_061917) do

  create_table "developers", force: :cascade do |t|
    t.string "developer_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "game_name"
    t.integer "year_of_release"
    t.decimal "critic_score"
    t.decimal "user_score"
    t.integer "genre_name_id", null: false
    t.integer "publisher_name_id", null: false
    t.integer "developer_name_id", null: false
    t.integer "platform_name_id", null: false
    t.integer "game_rank_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["developer_name_id"], name: "index_games_on_developer_name_id"
    t.index ["game_rank_id"], name: "index_games_on_game_rank_id"
    t.index ["genre_name_id"], name: "index_games_on_genre_name_id"
    t.index ["platform_name_id"], name: "index_games_on_platform_name_id"
    t.index ["publisher_name_id"], name: "index_games_on_publisher_name_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.integer "games_in_category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string "platform_name"
    t.integer "games_from_platform"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "publisher_name"
    t.integer "games_from_publisher"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer "game_rank"
    t.decimal "na_sales"
    t.decimal "jp_sales"
    t.decimal "global_sales"
    t.integer "game_name_id", null: false
    t.integer "developer_name_id", null: false
    t.integer "publisher_name_id", null: false
    t.integer "genre_name_id", null: false
    t.integer "platform_name_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["developer_name_id"], name: "index_sales_on_developer_name_id"
    t.index ["game_name_id"], name: "index_sales_on_game_name_id"
    t.index ["genre_name_id"], name: "index_sales_on_genre_name_id"
    t.index ["platform_name_id"], name: "index_sales_on_platform_name_id"
    t.index ["publisher_name_id"], name: "index_sales_on_publisher_name_id"
  end

  add_foreign_key "games", "developer_names"
  add_foreign_key "games", "game_ranks"
  add_foreign_key "games", "genre_names"
  add_foreign_key "games", "platform_names"
  add_foreign_key "games", "publisher_names"
  add_foreign_key "sales", "developer_names"
  add_foreign_key "sales", "game_names"
  add_foreign_key "sales", "genre_names"
  add_foreign_key "sales", "platform_names"
  add_foreign_key "sales", "publisher_names"
end
