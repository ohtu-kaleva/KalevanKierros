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

ActiveRecord::Schema.define(version: 20140820121905) do

  create_table "app_settings", force: true do |t|
    t.string   "name",       null: false
    t.string   "value",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollment_data", force: true do |t|
    t.integer  "enrollment_id"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "attribute_index"
  end

  add_index "enrollment_data", ["enrollment_id"], name: "index_enrollment_data_on_enrollment_id"

  create_table "enrollments", force: true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "time"
  end

  add_index "enrollments", ["event_id"], name: "index_enrollments_on_event_id"
  add_index "enrollments", ["user_id"], name: "index_enrollments_on_user_id"

  create_table "event_attributes", force: true do |t|
    t.integer  "event_id"
    t.string   "attribute_type"
    t.string   "attribute_value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "attribute_label"
    t.integer  "attribute_index"
  end

  add_index "event_attributes", ["event_id"], name: "index_event_attributes_on_event_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "open",            default: false, null: false
    t.date     "second_end_date"
    t.integer  "price"
    t.integer  "second_price"
    t.decimal  "penalty_factor",  default: 1.0
    t.integer  "factor"
    t.string   "sport_type"
    t.decimal  "rowing_penalty",  default: 12.0
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kk_enrollments", force: true do |t|
    t.integer  "user_id"
    t.boolean  "paid",       default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "kk_enrollments", ["user_id"], name: "index_kk_enrollments_on_user_id", unique: true

  create_table "results", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "group"
    t.integer  "year"
    t.string   "series"
    t.decimal  "orienteering_pts"
    t.decimal  "skiing_pts"
    t.decimal  "marathon_pts"
    t.decimal  "rowing_pts"
    t.decimal  "cycling_pts"
    t.decimal  "skating_pts"
    t.decimal  "orienteering_time"
    t.decimal  "skiing_time"
    t.decimal  "marathon_time"
    t.decimal  "rowing_time"
    t.decimal  "cycling_time"
    t.decimal  "skating_time"
    t.integer  "orienteering_pos"
    t.integer  "skiing_pos"
    t.integer  "marathon_pos"
    t.integer  "rowing_pos"
    t.integer  "cycling_pos"
    t.integer  "skating_pos"
    t.string   "marathon_style"
    t.string   "rowing_style"
    t.string   "skiing_style"
    t.decimal  "pts_sum"
    t.integer  "completed_events"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "kk_number"
  end

  create_table "statistics", force: true do |t|
    t.integer  "kk_number"
    t.integer  "user_id"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "city"
    t.integer  "birth_year"
    t.integer  "six_events_completed_count",  default: 0
    t.integer  "five_events_completed_count", default: 0
    t.integer  "four_events_completed_count", default: 0
    t.integer  "total_events_completed",      default: 0
    t.decimal  "pts_sum",                     default: 0.0
    t.integer  "position",                    default: 0
    t.string   "p"
    t.string   "r"
    t.integer  "a",                           default: 0
    t.string   "ap"
    t.integer  "k",                           default: 0
    t.integer  "v",                           default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "statistics", ["kk_number"], name: "index_statistics_on_kk_number"
  add_index "statistics", ["user_id"], name: "index_statistics_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "phone_number"
    t.date     "birth_date"
    t.string   "gender"
    t.boolean  "admin",            default: false, null: false
    t.integer  "group_id"
    t.integer  "kk_number"
    t.string   "city"
    t.string   "postal_code"
    t.string   "street_address"
    t.string   "activation_token"
    t.boolean  "active",           default: false, null: false
  end

  add_index "users", ["kk_number"], name: "index_users_on_kk_number", unique: true

  create_table "uutiset", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
