# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190328215649) do

  create_table "pets", force: :cascade do |t|
    t.string "pet_name"
    t.integer "pet_age"
    t.string "pet_race"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pet_breed"
    t.text "pet_bio"
    t.string "pet_picture"
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "service_name"
    t.integer "service_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vet_id"
    t.text "service_description"
    t.string "service_picture"
    t.index ["vet_id"], name: "index_services_on_vet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "address"
    t.integer "phone"
    t.string "name"
    t.string "last_name"
    t.boolean "role"
    t.text "bio"
    t.string "picture"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
