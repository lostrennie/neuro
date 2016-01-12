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

ActiveRecord::Schema.define(version: 20151207180639) do

  create_table "people", force: :cascade do |t|
    t.string   "fname",                  limit: 255
    t.string   "lname",                  limit: 255
    t.string   "user_name",              limit: 255
    t.string   "auth_id",                limit: 255
    t.string   "school",                 limit: 255
    t.string   "building",               limit: 255
    t.string   "office",                 limit: 255
    t.string   "phone",                  limit: 255
    t.string   "pi1",                    limit: 255
    t.string   "pi2",                    limit: 255
    t.string   "boss",                   limit: 255
    t.text     "interest",               limit: 65535
    t.text     "research",               limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "position",               limit: 255
    t.string   "title",                  limit: 255
    t.string   "prefix",                 limit: 255
    t.string   "thumbnail_file_name",    limit: 255
    t.string   "thumbnail_content_type", limit: 255
    t.integer  "thumbnail_file_size",    limit: 4
    t.datetime "thumbnail_updated_at"
    t.string   "banner_file_name",       limit: 255
    t.string   "banner_content_type",    limit: 255
    t.integer  "banner_file_size",       limit: 4
    t.datetime "banner_updated_at"
    t.string   "focus1",                 limit: 255
    t.string   "focus2",                 limit: 255
    t.string   "focus3",                 limit: 255
  end

  create_table "pubs", force: :cascade do |t|
    t.integer  "person_id",  limit: 4
    t.string   "pubmed_id",  limit: 255
    t.string   "journal",    limit: 255
    t.string   "title",      limit: 255
    t.string   "auth_id",    limit: 255
    t.text     "authors",    limit: 65535
    t.string   "pages",      limit: 255
    t.string   "date",       limit: 255
    t.string   "type",       limit: 255
    t.string   "link",       limit: 255
    t.string   "notes",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pubs", ["person_id"], name: "index_pubs_on_person_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
