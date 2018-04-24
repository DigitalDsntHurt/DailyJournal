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

ActiveRecord::Schema.define(version: 20180424062250) do

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
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "total"
    t.integer  "v_total"
    t.integer  "v0_attempts"
    t.integer  "v1_attempts"
    t.integer  "v2_attempts"
    t.integer  "v3_attempts"
    t.integer  "v4_attempts"
    t.integer  "v5_attempts"
    t.integer  "v6_attempts"
    t.integer  "v7_attempts"
    t.integer  "v8_attempts"
    t.integer  "v9_attempts"
    t.integer  "minutes"
    t.integer  "attempt_total"
    t.integer  "nine_ab"
    t.integer  "nine_cd"
    t.integer  "ten_ab"
    t.integer  "ten_cd"
    t.integer  "eleven_ab"
    t.integer  "eleven_cd"
    t.integer  "twelve_a"
    t.integer  "twelve_b"
    t.integer  "twelve_c"
    t.integer  "twelve_d"
    t.integer  "nine_ab_attempts"
    t.integer  "nine_cd_attempts"
    t.integer  "ten_ab_attempts"
    t.integer  "ten_cd_attempts"
    t.integer  "eleven_ab_attempts"
    t.integer  "eleven_cd_attempts"
    t.integer  "twelve_a_attempts"
    t.integer  "twelve_b_attempts"
    t.integer  "twelve_c_attempts"
    t.integer  "twelve_d_attempts"
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
    t.datetime "occurrence_time"
    t.date     "occurrence_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "description"
    t.string   "notes"
    t.boolean  "done"
    t.datetime "planned_time"
    t.date     "planned_date"
  end

  create_table "goal_indicators", force: :cascade do |t|
    t.string   "measure"
    t.boolean  "boolean_indicator"
    t.float    "dollars_made_indicator"
    t.float    "dollars_spent_indicator"
    t.text     "text_indicator"
    t.string   "goal_category"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "impulses", force: :cascade do |t|
    t.string   "name"
    t.boolean  "resisted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.text     "description"
  end

  create_table "weights", force: :cascade do |t|
    t.float    "weight"
    t.datetime "weighed_at"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "minutes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.datetime "occurrence_time"
    t.date     "occurrence_date"
    t.integer  "climb_id"
  end

end
