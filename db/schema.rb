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

ActiveRecord::Schema.define(version: 20180125075909) do

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
    t.integer  "total"
    t.integer  "v_total"
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

  create_table "evening_rituals", force: :cascade do |t|
    t.date     "day"
    t.boolean  "core"
    t.boolean  "stretch"
    t.boolean  "brush"
    t.boolean  "read"
    t.boolean  "journal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "everydays", force: :cascade do |t|
    t.boolean  "read"
    t.boolean  "cardio"
    t.boolean  "exercise"
    t.boolean  "eat_to_plan"
    t.boolean  "make_money"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  create_table "morning_rituals", force: :cascade do |t|
    t.date     "day"
    t.datetime "waketime"
    t.boolean  "exercise"
    t.boolean  "brush"
    t.boolean  "protein"
    t.boolean  "journal"
    t.boolean  "drink_water"
    t.boolean  "read"
    t.boolean  "meditate"
    t.boolean  "happy"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "simple_consumables", force: :cascade do |t|
    t.boolean  "on_diet"
    t.datetime "occurrence_time"
    t.date     "occurrence_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "consumable_type"
  end

  create_table "weights", force: :cascade do |t|
    t.float    "weight"
    t.datetime "weighed_at"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
