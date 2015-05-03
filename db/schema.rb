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

ActiveRecord::Schema.define(version: 20150414191700) do

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "code_name"
    t.date     "creation_date"
    t.date     "release_date"
    t.text     "description"
    t.text     "subsystems"
    t.date     "last_release_date"
    t.time     "last_release_time"
    t.string   "last_release_version"
    t.text     "last_release_description"
    t.string   "last_release_deployer"
    t.date     "next_release_date"
    t.time     "next_release_time"
    t.string   "next_release_version"
    t.text     "next_release_description"
    t.string   "next_release_deployer"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "documentation"
    t.string   "repo_location"
    t.string   "hosting"
  end

end
