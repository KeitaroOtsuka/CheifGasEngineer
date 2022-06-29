# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_29_084025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "body", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "choices", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "choice1"
    t.integer "choice2"
    t.integer "choice3"
    t.integer "choice4"
    t.integer "choice5"
    t.index ["question_id"], name: "index_choices_on_question_id"
  end

  create_table "exams", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "year_id", null: false
    t.integer "exam_type", default: 0, null: false
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_exams_on_category_id"
    t.index ["year_id"], name: "index_exams_on_year_id"
  end

  create_table "group_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_group_users_on_group_id"
    t.index ["user_id"], name: "index_group_users_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name", null: false
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "owner_id", null: false
    t.index ["name"], name: "index_groups_on_name", unique: true
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "exam_id", null: false
    t.text "sentence"
    t.integer "answer"
    t.text "commentary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "supplement1"
    t.text "supplement2"
    t.text "supplement3"
    t.text "supplement4"
    t.text "supplement5"
    t.index ["exam_id"], name: "index_questions_on_exam_id"
  end

  create_table "result_choices", force: :cascade do |t|
    t.bigint "result_id", null: false
    t.bigint "choice_id", null: false
    t.boolean "judge", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["choice_id"], name: "index_result_choices_on_choice_id"
    t.index ["result_id"], name: "index_result_choices_on_result_id"
  end

  create_table "results", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_results_on_question_id"
    t.index ["user_id"], name: "index_results_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "role", default: 0, null: false
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.integer "access_count_to_reset_password_page", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

  create_table "years", force: :cascade do |t|
    t.string "body", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "choices", "questions"
  add_foreign_key "exams", "categories"
  add_foreign_key "exams", "years"
  add_foreign_key "group_users", "groups"
  add_foreign_key "group_users", "users"
  add_foreign_key "questions", "exams"
  add_foreign_key "result_choices", "choices"
  add_foreign_key "result_choices", "results"
  add_foreign_key "results", "questions"
  add_foreign_key "results", "users"
end
