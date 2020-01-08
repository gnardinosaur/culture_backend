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

ActiveRecord::Schema.define(version: 2020_01_08_162915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "img_urls"
    t.string "title"
    t.string "geography"
    t.string "artist"
    t.string "dates"
    t.string "description"
    t.string "department"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "department"
    t.boolean "highlight"
    t.string "dates"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_searches_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "f_name"
    t.string "l_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "works", force: :cascade do |t|
    t.bigint "search_id", null: false
    t.string "img_urls"
    t.string "title"
    t.string "geography"
    t.string "artist"
    t.string "dates"
    t.string "description"
    t.string "department"
    t.boolean "sent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["search_id"], name: "index_works_on_search_id"
  end

  add_foreign_key "favorites", "users"
  add_foreign_key "searches", "users"
  add_foreign_key "works", "searches"
end
