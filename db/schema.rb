# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_01_163000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "release_date"
    t.bigint "generation_id", null: false
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["generation_id"], name: "index_games_on_generation_id"
  end

  create_table "generations", force: :cascade do |t|
    t.string "region_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gravestones", force: :cascade do |t|
    t.bigint "trainer_id", null: false
    t.integer "level"
    t.string "death"
    t.bigint "teammate_id", null: false
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "nuzlocke_id", null: false
    t.index ["nuzlocke_id"], name: "index_gravestones_on_nuzlocke_id"
    t.index ["teammate_id"], name: "index_gravestones_on_teammate_id"
    t.index ["trainer_id"], name: "index_gravestones_on_trainer_id"
  end

  create_table "graveyards", force: :cascade do |t|
    t.bigint "trainer_id", null: false
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trainer_id"], name: "index_graveyards_on_trainer_id"
    t.index ["user_id"], name: "index_graveyards_on_user_id"
  end

  create_table "nuzlockes", force: :cascade do |t|
    t.string "name"
    t.string "difficulty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.bigint "type_id", null: false
    t.text "description"
    t.string "nature"
    t.string "height"
    t.float "weight"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["type_id"], name: "index_pokemons_on_type_id"
  end

  create_table "rules", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teammates", force: :cascade do |t|
    t.bigint "trainer_id", null: false
    t.string "nickname"
    t.bigint "pokemon_id", null: false
    t.boolean "alive"
    t.text "notes"
    t.string "location_caught"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pokemon_id"], name: "index_teammates_on_pokemon_id"
    t.index ["trainer_id"], name: "index_teammates_on_trainer_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "name"
    t.integer "trainer_id_number"
    t.integer "gym_badge"
    t.string "region"
    t.integer "pokemon_seen"
    t.integer "pokemon_caught"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "strong_against"
    t.string "weak_against"
    t.string "immue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "games", "generations"
  add_foreign_key "gravestones", "nuzlockes"
  add_foreign_key "gravestones", "teammates"
  add_foreign_key "gravestones", "trainers"
  add_foreign_key "graveyards", "trainers"
  add_foreign_key "graveyards", "users"
  add_foreign_key "pokemons", "types"
  add_foreign_key "teammates", "pokemons"
  add_foreign_key "teammates", "trainers"
end
