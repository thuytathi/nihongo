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

ActiveRecord::Schema.define(version: 20150331091112) do

  create_table "grammas", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "example",     limit: 255
    t.integer  "lesson_id",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "grammas", ["lesson_id"], name: "index_grammas_on_lesson_id", using: :btree

  create_table "lessons", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "image",      limit: 255
    t.integer  "unit_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "lessons", ["unit_id"], name: "index_lessons_on_unit_id", using: :btree

  create_table "levels", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "reads", force: :cascade do |t|
    t.string   "content",    limit: 255
    t.string   "answer",     limit: 255
    t.integer  "lesson_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "reads", ["lesson_id"], name: "index_reads_on_lesson_id", using: :btree

  create_table "units", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "level_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "units", ["level_id"], name: "index_units_on_level_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "sex",                 limit: 255
    t.string   "email",               limit: 255
    t.boolean  "admin",               limit: 1
    t.date     "birthday"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
    t.string   "password_digest",     limit: 255
  end

  create_table "videos", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "link",       limit: 255
    t.integer  "lesson_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "videos", ["lesson_id"], name: "index_videos_on_lesson_id", using: :btree

  create_table "vucabularies", force: :cascade do |t|
    t.string   "jp",         limit: 255
    t.string   "hiragana",   limit: 255
    t.string   "vi",         limit: 255
    t.integer  "lesson_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "vucabularies", ["lesson_id"], name: "index_vucabularies_on_lesson_id", using: :btree

  add_foreign_key "grammas", "lessons"
  add_foreign_key "lessons", "units"
  add_foreign_key "reads", "lessons"
  add_foreign_key "units", "levels"
  add_foreign_key "videos", "lessons"
  add_foreign_key "vucabularies", "lessons"
end
