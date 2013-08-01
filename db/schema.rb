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

ActiveRecord::Schema.define(version: 0) do

  create_table "alternative_names", id: false, force: true do |t|
    t.integer "id",               null: false
    t.string  "name", limit: 100
  end

  create_table "elements", id: false, force: true do |t|
    t.integer "id",                         null: false
    t.integer "atomic_number",              null: false
    t.string  "name",           limit: 100
    t.string  "symbol",         limit: 100
    t.integer "atomic_group"
    t.integer "period"
    t.float   "atomic_mass"
    t.integer "isotope_number"
    t.integer "boiling_point"
    t.integer "melting_point"
    t.integer "series_id"
  end

  create_table "series", id: false, force: true do |t|
    t.integer "id",                      null: false
    t.string  "series_name", limit: 100
  end

end
