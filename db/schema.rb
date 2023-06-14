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

ActiveRecord::Schema[7.0].define(version: 2023_06_13_205127) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cabs", force: :cascade do |t|
    t.string "manufacturer"
    t.text "description"
    t.string "image_url"
    t.string "transmission"
    t.string "model"
    t.float "rental_price"
    t.integer "seating_capacity"
    t.string "body_type"
    t.integer "discount"
    t.string "engine_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "user_name"
    t.bigint "cab_id", null: false
    t.datetime "reserve_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cab_id"], name: "index_reservations_on_cab_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "reservations", "cabs"
  add_foreign_key "reservations", "users"
end
