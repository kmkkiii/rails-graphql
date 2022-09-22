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

ActiveRecord::Schema[7.0].define(version: 2022_09_22_084236) do
  create_table "event_members", force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "member_id", null: false
    t.boolean "presented", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_members_on_event_id"
    t.index ["member_id"], name: "index_event_members_on_member_id"
    t.index ["presented"], name: "index_event_members_on_presented"
  end

  create_table "events", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "start_at", null: false
    t.datetime "end_at"
    t.string "place"
    t.string "tags"
    t.text "memo"
    t.boolean "canceled", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["canceled"], name: "index_events_on_canceled"
    t.index ["place"], name: "index_events_on_place"
    t.index ["start_at"], name: "index_events_on_start_at"
    t.index ["title"], name: "index_events_on_title"
  end

  create_table "members", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["name"], name: "index_members_on_name"
  end

  add_foreign_key "event_members", "events"
  add_foreign_key "event_members", "members"
end
