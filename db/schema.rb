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

ActiveRecord::Schema.define(version: 20150512021515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "definitions", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "definition"
    t.integer  "entry_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
  end

  add_index "definitions", ["cached_votes_down"], name: "index_definitions_on_cached_votes_down", using: :btree
  add_index "definitions", ["cached_votes_score"], name: "index_definitions_on_cached_votes_score", using: :btree
  add_index "definitions", ["cached_votes_total"], name: "index_definitions_on_cached_votes_total", using: :btree
  add_index "definitions", ["cached_votes_up"], name: "index_definitions_on_cached_votes_up", using: :btree
  add_index "definitions", ["cached_weighted_average"], name: "index_definitions_on_cached_weighted_average", using: :btree
  add_index "definitions", ["cached_weighted_score"], name: "index_definitions_on_cached_weighted_score", using: :btree
  add_index "definitions", ["cached_weighted_total"], name: "index_definitions_on_cached_weighted_total", using: :btree
  add_index "definitions", ["entry_id"], name: "index_definitions_on_entry_id", using: :btree
  add_index "definitions", ["user_id"], name: "index_definitions_on_user_id", using: :btree

  create_table "entries", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "term"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
  end

  add_index "entries", ["cached_votes_down"], name: "index_entries_on_cached_votes_down", using: :btree
  add_index "entries", ["cached_votes_score"], name: "index_entries_on_cached_votes_score", using: :btree
  add_index "entries", ["cached_votes_total"], name: "index_entries_on_cached_votes_total", using: :btree
  add_index "entries", ["cached_votes_up"], name: "index_entries_on_cached_votes_up", using: :btree
  add_index "entries", ["cached_weighted_average"], name: "index_entries_on_cached_weighted_average", using: :btree
  add_index "entries", ["cached_weighted_score"], name: "index_entries_on_cached_weighted_score", using: :btree
  add_index "entries", ["cached_weighted_total"], name: "index_entries_on_cached_weighted_total", using: :btree
  add_index "entries", ["user_id"], name: "index_entries_on_user_id", using: :btree

  create_table "examples", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "example"
    t.integer  "entry_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
  end

  add_index "examples", ["cached_votes_down"], name: "index_examples_on_cached_votes_down", using: :btree
  add_index "examples", ["cached_votes_score"], name: "index_examples_on_cached_votes_score", using: :btree
  add_index "examples", ["cached_votes_total"], name: "index_examples_on_cached_votes_total", using: :btree
  add_index "examples", ["cached_votes_up"], name: "index_examples_on_cached_votes_up", using: :btree
  add_index "examples", ["cached_weighted_average"], name: "index_examples_on_cached_weighted_average", using: :btree
  add_index "examples", ["cached_weighted_score"], name: "index_examples_on_cached_weighted_score", using: :btree
  add_index "examples", ["cached_weighted_total"], name: "index_examples_on_cached_weighted_total", using: :btree
  add_index "examples", ["entry_id"], name: "index_examples_on_entry_id", using: :btree
  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "references", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "source"
    t.integer  "entry_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
  end

  add_index "references", ["cached_votes_down"], name: "index_references_on_cached_votes_down", using: :btree
  add_index "references", ["cached_votes_score"], name: "index_references_on_cached_votes_score", using: :btree
  add_index "references", ["cached_votes_total"], name: "index_references_on_cached_votes_total", using: :btree
  add_index "references", ["cached_votes_up"], name: "index_references_on_cached_votes_up", using: :btree
  add_index "references", ["cached_weighted_average"], name: "index_references_on_cached_weighted_average", using: :btree
  add_index "references", ["cached_weighted_score"], name: "index_references_on_cached_weighted_score", using: :btree
  add_index "references", ["cached_weighted_total"], name: "index_references_on_cached_weighted_total", using: :btree
  add_index "references", ["entry_id"], name: "index_references_on_entry_id", using: :btree
  add_index "references", ["user_id"], name: "index_references_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

  add_foreign_key "definitions", "entries"
  add_foreign_key "definitions", "users"
  add_foreign_key "entries", "users"
  add_foreign_key "examples", "entries"
  add_foreign_key "examples", "users"
  add_foreign_key "references", "entries"
  add_foreign_key "references", "users"
end
