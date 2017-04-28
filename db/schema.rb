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

ActiveRecord::Schema.define(version: 20170428163635) do

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

  create_table "consumables", force: :cascade do |t|
    t.datetime "consumed_at"
    t.string   "consumption_type"
    t.float    "quantity"
    t.string   "units"
    t.string   "item1"
    t.string   "item2"
    t.string   "item3"
    t.string   "item4"
    t.string   "item5"
    t.string   "item6"
    t.string   "item7"
    t.string   "item8"
    t.string   "item9"
    t.string   "item10"
    t.string   "item11"
    t.string   "item12"
    t.string   "item13"
    t.string   "item14"
    t.string   "item15"
    t.text     "notes"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.datetime "occurrence_time"
    t.date     "occurrence_date"
  end

  create_table "daily_accomplishments", force: :cascade do |t|
    t.date     "day"
    t.text     "priority1"
    t.boolean  "priority1_accomplished"
    t.text     "priority2"
    t.boolean  "priority2_accomplished"
    t.text     "priority3"
    t.boolean  "priority3_accomplished"
    t.text     "priority4"
    t.boolean  "priority4_accomplished"
    t.text     "priority5"
    t.boolean  "priority5_accomplished"
    t.text     "priority6"
    t.boolean  "priority6_accomplished"
    t.text     "priority7"
    t.boolean  "priority7_accomplished"
    t.text     "priority8"
    t.boolean  "priority8_accomplished"
    t.text     "priority9"
    t.boolean  "priority9_accomplished"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
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

  create_table "evening_rituals", force: :cascade do |t|
    t.boolean  "stretch"
    t.boolean  "core"
    t.boolean  "brush"
    t.boolean  "wash"
    t.boolean  "read"
    t.boolean  "journal"
    t.boolean  "ktime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.string   "time"
    t.integer  "reps"
    t.integer  "lbs"
    t.datetime "occurrence_time"
    t.date     "occurrence_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "journal_entries", force: :cascade do |t|
    t.string   "prompt"
    t.text     "entry"
    t.string   "entry_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.datetime "occurrence_time"
    t.date     "occurrence_date"
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

  create_table "morning_rituals", force: :cascade do |t|
    t.datetime "wake_time"
    t.boolean  "exercise_done"
    t.string   "exercise_name"
    t.integer  "exercise_reps"
    t.boolean  "protein_done"
    t.boolean  "brush_done"
    t.boolean  "journal_done"
    t.datetime "occurrence_time"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.date     "occurrence_date"
  end

  create_table "priorities", force: :cascade do |t|
    t.string   "title"
    t.boolean  "accomplished"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "spliffs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "smoked_at"
  end

end
