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

ActiveRecord::Schema.define(version: 20140616133234) do

  create_table "enrollment_data", force: true do |t|
    t.integer  "enrollment_id"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enrollments", force: true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_attributes", force: true do |t|
    t.integer  "event_id"
    t.string   "attribute_type"
    t.string   "attribute_value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "attribute_label"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "phone_number"
    t.string   "address"
    t.date     "birth_date"
    t.string   "gender"
    t.boolean  "admin",           default: false, null: false
    t.integer  "group_id"
    t.integer  "kk_number"
  end

  add_index "users", ["kk_number"], name: "index_users_on_kk_number", unique: true

end
