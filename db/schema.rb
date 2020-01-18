# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_18_190632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_notes", force: :cascade do |t|
    t.bigint "job_tracker_id", null: false
    t.text "notes"
    t.text "interview_questions"
    t.text "prep_questions"
    t.text "improvement"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_tracker_id"], name: "index_job_notes_on_job_tracker_id"
  end

  create_table "job_trackers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "job_id", null: false
    t.string "connections"
    t.date "applied"
    t.date "phone_screening"
    t.date "interview_one"
    t.date "interview_two"
    t.date "interview_three"
    t.date "interview_four"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_job_trackers_on_job_id"
    t.index ["user_id"], name: "index_job_trackers_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "company"
    t.string "salary_range"
    t.string "job_title"
    t.text "job_description"
    t.string "recruiter"
    t.text "about_company"
    t.string "tech_stack"
    t.text "extras"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "job_notes", "job_trackers"
  add_foreign_key "job_trackers", "jobs"
  add_foreign_key "job_trackers", "users"
end
