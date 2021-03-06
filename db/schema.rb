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

ActiveRecord::Schema.define(version: 20160908151930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_skills", id: false, force: :cascade do |t|
    t.integer "course_id"
    t.integer "tag_id"
  end

  create_table "course_students", id: false, force: :cascade do |t|
    t.integer "course_id"
    t.integer "user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "teacher_id"
    t.datetime "run_at"
    t.string   "place"
    t.string   "sphere"
    t.string   "announce"
  end

  create_table "skills", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "skill"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "login"
  end

  create_table "wants", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "tag_id"
  end

end
