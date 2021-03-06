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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130716185546) do

  create_table "cuisines", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "days", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "hours", :force => true do |t|
    t.integer  "open_seats"
    t.integer  "time_slot"
    t.integer  "day_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "points", :force => true do |t|
    t.integer  "earned"
    t.integer  "spent"
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "reservations", :force => true do |t|
    t.integer  "party_size"
    t.integer  "restaurant_id"
    t.integer  "day_id"
    t.integer  "hour_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.string   "address"
    t.string   "neighbourhood"
    t.string   "price_range"
    t.string   "description"
    t.string   "menu"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "name"
    t.string   "image"
    t.integer  "cuisine_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "remember_token"
    t.boolean  "owner",               :default => false
    t.integer  "owned_restaurant_id", :default => 0
  end

end
