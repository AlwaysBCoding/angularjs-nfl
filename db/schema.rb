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

ActiveRecord::Schema.define(version: 20130522213922) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: true do |t|
    t.integer  "team_id"
    t.integer  "jersey_number"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "position"
    t.string   "status"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "experience"
    t.string   "college"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "city"
    t.string   "conference", limit: 3
    t.string   "division",   limit: 5
    t.string   "name"
    t.string   "abbr",       limit: 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
