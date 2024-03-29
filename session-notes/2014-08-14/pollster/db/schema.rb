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

ActiveRecord::Schema.define(version: 20140814193705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "polls", force: true do |t|
    t.integer  "user_id",    null: false
    t.string   "question",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "polls", ["user_id"], name: "index_polls_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "votes", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "poll_id",    null: false
    t.integer  "response",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["poll_id"], name: "index_votes_on_poll_id", using: :btree
  add_index "votes", ["user_id", "poll_id"], name: "index_votes_on_user_id_and_poll_id", unique: true, using: :btree

end
