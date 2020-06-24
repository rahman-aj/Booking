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

ActiveRecord::Schema.define(version: 2020_06_23_151511) do

  create_table "bookings", force: :cascade do |t|
    t.datetime "Time"
    t.text "Description"
    t.integer "Mentor_id", null: false
    t.integer "Mentee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Mentee_id"], name: "index_bookings_on_Mentee_id"
    t.index ["Mentor_id"], name: "index_bookings_on_Mentor_id"
  end

  create_table "mentees", force: :cascade do |t|
    t.string "Name"
    t.string "Email"
    t.string "Password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string "Name"
    t.string "Email"
    t.string "Password"
    t.text "About"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "Mentees"
  add_foreign_key "bookings", "Mentors"
end
