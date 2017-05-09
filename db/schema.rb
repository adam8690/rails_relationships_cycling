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

ActiveRecord::Schema.define(version: 20170509132218) do

  create_table "bikes", force: :cascade do |t|
    t.string   "brand"
    t.integer  "cyclist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bikes", ["cyclist_id"], name: "index_bikes_on_cyclist_id"

  create_table "cyclists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "team_id"
  end

  add_index "cyclists", ["team_id"], name: "index_cyclists_on_team_id"

  create_table "entries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "race_id"
    t.integer  "team_id"
  end

  add_index "entries", ["race_id"], name: "index_entries_on_race_id"
  add_index "entries", ["team_id"], name: "index_entries_on_team_id"

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end