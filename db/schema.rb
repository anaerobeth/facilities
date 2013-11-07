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

ActiveRecord::Schema.define(version: 20131107030217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "enclosures", force: true do |t|
    t.string   "category",    null: false
    t.string   "label"
    t.string   "comment"
    t.integer  "location_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities", force: true do |t|
    t.string   "category",   null: false
    t.decimal  "capacity"
    t.string   "unit"
    t.string   "label",      null: false
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facility_enclosures", force: true do |t|
    t.integer  "facility_id",  null: false
    t.integer  "enclosure_id", null: false
    t.string   "position",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facility_locations", force: true do |t|
    t.integer  "facility_id", null: false
    t.integer  "location_id", null: false
    t.string   "position",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "landlords", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "category",    null: false
    t.string   "label",       null: false
    t.integer  "landlord_id", null: false
    t.decimal  "longitude",   null: false
    t.decimal  "latitude",    null: false
    t.string   "address",     null: false
    t.string   "floor"
    t.string   "otherid1"
    t.string   "otherid2"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
