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

ActiveRecord::Schema.define(version: 2018_07_20_195544) do

  create_table "lessons", force: :cascade do |t|
    t.string "status"
    t.float "grade"
    t.text "teachernote"
    t.text "studentnote"
    t.text "reminder"
    t.string "nextlesson"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "phone"
    t.string "email"
    t.string "dob"
    t.text "experience"
    t.text "interests"
    t.string "lessontime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
