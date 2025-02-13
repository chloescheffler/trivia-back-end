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

ActiveRecord::Schema.define(version: 2022_10_25_134828) do

  create_table "games", force: :cascade do |t|
    t.integer "score"
    t.integer "user_id"
    t.integer "question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.string "correct_answer"
    t.string "incorrect_answer_1"
    t.string "incorrect_answer_2"
    t.string "incorrect_answer_3"
    t.string "category"
  end

  create_table "results", force: :cascade do |t|
    t.string "name"
    t.integer "game_id"
    t.integer "user_id"
    t.integer "score"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "score"
  end

end
