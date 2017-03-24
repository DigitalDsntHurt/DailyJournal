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

ActiveRecord::Schema.define(version: 20170324062506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "climbs", force: :cascade do |t|
    t.integer  "v0s"
    t.integer  "v1s"
    t.integer  "v2s"
    t.integer  "v3s"
    t.integer  "v4s"
    t.integer  "v5s"
    t.integer  "v6s"
    t.integer  "v7s"
    t.integer  "v8s"
    t.integer  "v9s"
    t.date     "climb_date"
    t.text     "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.string   "grateful_1"
    t.string   "grateful_2"
    t.string   "grateful_3"
    t.string   "make_today_great_1"
    t.string   "make_today_great_2"
    t.string   "make_today_great_3"
    t.string   "affirmation_1"
    t.string   "affirmation_2"
    t.string   "amazing_thing_1"
    t.string   "amazing_thing_2"
    t.string   "amazing_thing_3"
    t.string   "improve_today_1"
    t.string   "improve_today_2"
    t.string   "anything_else"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.date     "entry_date"
  end

  create_table "meals", force: :cascade do |t|
    t.datetime "eaten_at"
    t.string   "meal"
    t.string   "meal_source"
    t.string   "i1"
    t.string   "i2"
    t.string   "i3"
    t.string   "i4"
    t.string   "i5"
    t.string   "i6"
    t.string   "i7"
    t.string   "i8"
    t.string   "i9"
    t.string   "i10"
    t.string   "i11"
    t.string   "i12"
    t.string   "i_other"
    t.string   "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "spliffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "smoked_at"
  end

end
