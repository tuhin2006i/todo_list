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

ActiveRecord::Schema.define(version: 20141012131037) do

  create_table "todos", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.datetime "deadline"
    t.datetime "completion_date"
    t.string   "status",          limit: 15
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",        limit: 25
    t.string   "password_digest"
    t.string   "name",            limit: 60
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "phone",           limit: 25
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["id"], name: "index_users_on_id", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", using: :btree

end
