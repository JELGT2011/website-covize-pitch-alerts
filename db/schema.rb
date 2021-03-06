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

ActiveRecord::Schema.define(version: 20150417200128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "pitch_events", force: :cascade do |t|
    t.string   "event_name"
    t.string   "org_name"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "photo_uploaded_at"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "locale"
    t.string   "event_start"
    t.string   "event_end"
    t.string   "registration_deadline"
    t.string   "registration_link"
    t.string   "detail_link"
    t.string   "contact_name"
    t.string   "contact_number"
    t.string   "contact_email"
    t.boolean  "local"
    t.boolean  "national"
    t.boolean  "female_founder"
    t.boolean  "ethnic_founder"
    t.string   "industry"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "personal_name"
    t.string   "email"
    t.string   "company_name"
    t.string   "industry"
    t.string   "locale"
    t.string   "female_founder"
    t.string   "ethnic_founder"
    t.string   "capital_goal"
    t.string   "fundraising_stage"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
