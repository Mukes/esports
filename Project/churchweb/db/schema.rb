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

ActiveRecord::Schema.define(version: 20130918021716) do

  create_table "churches", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "church_phone"
    t.string   "church_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "member_name"
    t.date     "date_of_birth"
    t.integer  "member_phone_no"
    t.string   "gender"
    t.date     "baptism_date"
    t.string   "church_name"
    t.string   "subchurch_name"
    t.string   "profession"
    t.string   "marriage_status"
    t.integer  "sub_id"
    t.integer  "member_id"
    t.string   "member_email_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_churches", force: true do |t|
    t.string   "subchurch_name"
    t.string   "subchurch_address"
    t.integer  "subchurch_phone_no"
    t.integer  "id_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subchurches", force: true do |t|
    t.string   "subchurch_name"
    t.string   "subchurch_address"
    t.integer  "subchurch_phone_no"
    t.integer  "id_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
