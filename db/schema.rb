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

ActiveRecord::Schema.define(version: 20170310075400) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "Fname",                  limit: 255
    t.string   "Lname",                  limit: 255
    t.string   "Fname_kana",             limit: 255
    t.string   "Lname_kana",             limit: 255
    t.string   "nickname",               limit: 255
    t.integer  "role",                   limit: 4
    t.integer  "sex",                    limit: 4
    t.integer  "age",                    limit: 4
    t.string   "skype",                  limit: 255
    t.text     "profile",                limit: 65535
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "user_actives", force: :cascade do |t|
    t.date     "date"
    t.text     "done",        limit: 65535
    t.text     "undone",      limit: 65535
    t.text     "cause",       limit: 65535
    t.text     "solution",    limit: 65535
    t.text     "nextstep",    limit: 65535
    t.text     "detail",      limit: 65535
    t.integer  "user_id",     limit: 4
    t.integer  "progress_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_goals", force: :cascade do |t|
    t.text     "room_cmt",   limit: 65535
    t.text     "self_cmt",   limit: 65535
    t.text     "period_cmt", limit: 65535
    t.text     "room_url",   limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_houses", force: :cascade do |t|
    t.string   "fplan",      limit: 255
    t.integer  "size",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "house_id",     limit: 4
    t.integer  "goal_id",      limit: 4
    t.integer  "selfanaly_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_reserves", force: :cascade do |t|
    t.datetime "datetime"
    t.integer  "counseling", limit: 4
    t.text     "detail",     limit: 65535
    t.integer  "user_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_selfanalies", force: :cascade do |t|
    t.string   "strength1",   limit: 255
    t.string   "strength2",   limit: 255
    t.string   "strength3",   limit: 255
    t.string   "strength4",   limit: 255
    t.string   "strength5",   limit: 255
    t.string   "demerit1",    limit: 255
    t.string   "demerit2",    limit: 255
    t.string   "demerit3",    limit: 255
    t.string   "demerit4",    limit: 255
    t.string   "demerit5",    limit: 255
    t.string   "merit1",      limit: 255
    t.string   "merit2",      limit: 255
    t.string   "merit3",      limit: 255
    t.string   "merit4",      limit: 255
    t.string   "merit5",      limit: 255
    t.integer  "behave_type", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "Fname",                  limit: 255
    t.string   "Lname",                  limit: 255
    t.string   "Fname_kana",             limit: 255
    t.string   "Lname_kana",             limit: 255
    t.string   "nickname",               limit: 255
    t.integer  "role",                   limit: 4
    t.integer  "sex",                    limit: 4
    t.integer  "age",                    limit: 4
    t.string   "skype",                  limit: 255
    t.integer  "admin_id",               limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
