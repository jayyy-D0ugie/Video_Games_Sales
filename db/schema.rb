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

ActiveRecord::Schema.define(version: 2019_10_28_162101) do

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
    t.integer "genre_id", null: false
    t.integer "publisher_id", null: false
    t.integer "developer_id", null: false
    t.integer "platform_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "us_sales"
    t.decimal "jp_sales"
    t.decimal "global_sales"
    t.integer "game_rank"
    t.index ["developer_id"], name: "index_games_on_developer_id"
    t.index ["genre_id"], name: "index_games_on_genre_id"
    t.index ["platform_id"], name: "index_games_on_platform_id"
    t.index ["publisher_id"], name: "index_games_on_publisher_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.integer "games_in_category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.text "context"
    t.string "permalink"
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
    t.integer "game_id", null: false
    t.integer "developer_id", null: false
    t.integer "publisher_id", null: false
    t.integer "genre_id", null: false
    t.integer "platform_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["developer_id"], name: "index_sales_on_developer_id"
    t.index ["game_id"], name: "index_sales_on_game_id"
    t.index ["genre_id"], name: "index_sales_on_genre_id"
    t.index ["platform_id"], name: "index_sales_on_platform_id"
    t.index ["publisher_id"], name: "index_sales_on_publisher_id"
  end

  add_foreign_key "games", "developers"
  add_foreign_key "games", "genres"
  add_foreign_key "games", "platforms"
  add_foreign_key "games", "publishers"
  add_foreign_key "sales", "developers"
  add_foreign_key "sales", "games"
  add_foreign_key "sales", "genres"
  add_foreign_key "sales", "platforms"
  add_foreign_key "sales", "publishers"
end
