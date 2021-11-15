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

ActiveRecord::Schema.define(version: 2021_11_15_224748) do

  create_table "comments", force: :cascade do |t|
    t.integer "call"
    t.integer "rating"
    t.integer "workload"
    t.text "description"
    t.string "professor"
    t.integer "upvote"
    t.integer "downvote"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer "call"
    t.string "number"
    t.string "title"
    t.integer "pts"
    t.text "description"
    t.string "track"
    t.string "breadth"
    t.integer "required"
    t.integer "elective"
    t.string "elective_group"
    t.string "required_group"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
