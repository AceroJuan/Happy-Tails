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

ActiveRecord::Schema.define(version: 20190215034131) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "appointment_time"
    t.integer "service_id"
    t.integer "pet_id"
    t.index ["pet_id"], name: "index_appointments_on_pet_id"
    t.index ["service_id"], name: "index_appointments_on_service_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "pet_name"
    t.integer "pet_age"
    t.string "pet_race"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "service_name"
    t.integer "service_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vet_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vets", force: :cascade do |t|
    t.string "vet_name"
    t.string "vet_email"
    t.integer "vet_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
