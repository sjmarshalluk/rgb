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

ActiveRecord::Schema.define(version: 20141104154601) do

  create_table "breweries", force: true do |t|
    t.string   "name"
    t.string   "brewery_type"
    t.text     "description"
    t.date     "year_opened"
    t.date     "year_closed"
    t.string   "head_brewer"
    t.string   "founder"
    t.text     "core_range"
    t.boolean  "seasonals"
    t.boolean  "changing"
    t.integer  "rating"
    t.text     "where_to_buy"
    t.string   "website"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "untappd"
    t.string   "ratebeer"
    t.boolean  "drink_at_brewery"
    t.time     "monday_open"
    t.time     "monday_close"
    t.time     "tuesday_open"
    t.time     "tuesday_close"
    t.time     "wednesday_open"
    t.time     "wednesday_close"
    t.time     "thursday_open"
    t.time     "thursday_close"
    t.time     "friday_open"
    t.time     "friday_close"
    t.time     "saturday_open"
    t.time     "saturday_close"
    t.time     "sunday_open"
    t.time     "sunday_close"
    t.text     "drink_at_brewery_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
