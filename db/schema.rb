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

ActiveRecord::Schema.define(version: 20180201050624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.string "freeCodeCampId"
    t.string "title"
    t.string "challengeSeed", default: [], array: true
    t.string "tests", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "chapter_id"
    t.integer "order"
    t.integer "description_id"
    t.json "description"
    t.index ["chapter_id"], name: "index_challenges_on_chapter_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order"
  end

  create_table "description_paragraphers", force: :cascade do |t|
    t.string "paragraph", array: true
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "challenge_id"
    t.index ["challenge_id"], name: "index_description_paragraphers_on_challenge_id"
  end

  create_table "descriptions", force: :cascade do |t|
    t.integer "challenge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_descriptions_on_challenge_id"
  end

  add_foreign_key "challenges", "chapters"
  add_foreign_key "description_paragraphers", "challenges"
  add_foreign_key "descriptions", "challenges"
end
