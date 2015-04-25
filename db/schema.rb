# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150425134520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "pdf_layout",   default: "pdf"
    t.string   "pdf_template", default: "pdf"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "events_participants", force: :cascade do |t|
    t.integer "event_id"
    t.integer "participant_id"
  end

  add_index "events_participants", ["event_id"], name: "index_events_participants_on_event_id", using: :btree
  add_index "events_participants", ["participant_id"], name: "index_events_participants_on_participant_id", using: :btree

  create_table "participants", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "participants", ["event_id"], name: "index_participants_on_event_id", using: :btree

  add_foreign_key "events_participants", "events"
  add_foreign_key "events_participants", "participants"
  add_foreign_key "participants", "events"
end
