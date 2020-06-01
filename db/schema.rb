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

ActiveRecord::Schema.define(version: 2020_06_01_160249) do

  create_table "comments", force: :cascade do |t|
    t.integer "student_id"
    t.integer "diary_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diaries", force: :cascade do |t|
    t.float "study_time", default: 0.0, null: false
    t.integer "student_id", null: false
    t.integer "solve_number", default: 0, null: false
    t.float "incorrect_rate", default: 0.0, null: false
    t.text "can_body"
    t.text "cannot_body"
    t.text "next_body"
    t.float "rate", default: 0.0, null: false
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_parents_on_email", unique: true
    t.index ["reset_password_token"], name: "index_parents_on_reset_password_token", unique: true
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "score_reports", force: :cascade do |t|
    t.integer "grade", null: false
    t.integer "term", null: false
    t.integer "japanese", default: 0, null: false
    t.integer "math", default: 0, null: false
    t.integer "science", default: 0, null: false
    t.integer "social", default: 0, null: false
    t.integer "english", default: 0, null: false
    t.integer "p_e", default: 0, null: false
    t.integer "art", default: 0, null: false
    t.integer "music", default: 0, null: false
    t.integer "technical_course", default: 0, null: false
    t.integer "home_economics", default: 0, null: false
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", default: "", null: false
    t.string "image_id"
    t.text "introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "test_ranges", force: :cascade do |t|
    t.integer "grade", null: false
    t.integer "term", null: false
    t.string "title", null: false
    t.text "japanese"
    t.text "math"
    t.text "science"
    t.text "social"
    t.text "english"
    t.text "p_e"
    t.text "art"
    t.text "music"
    t.text "technical_course"
    t.text "home_economics"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "start_date"
    t.date "end_date"
  end

  create_table "test_scores", force: :cascade do |t|
    t.integer "grade", null: false
    t.integer "term", null: false
    t.string "title", null: false
    t.integer "japanese", default: 0, null: false
    t.integer "math", default: 0, null: false
    t.integer "science", default: 0, null: false
    t.integer "social", default: 0, null: false
    t.integer "english", default: 0, null: false
    t.integer "p_e", default: 0, null: false
    t.integer "art", default: 0, null: false
    t.integer "music", default: 0, null: false
    t.integer "technical_course", default: 0, null: false
    t.integer "home_economics", default: 0, null: false
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
