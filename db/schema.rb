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

ActiveRecord::Schema.define(version: 20140710175545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "categories", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "state"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["name"], name: "index_cities_on_name", using: :btree
  add_index "cities", ["state"], name: "index_cities_on_state", using: :btree

  create_table "comments", force: true do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faqs", force: true do |t|
    t.text     "question"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "neighborhood"
    t.string   "name"
    t.text     "address"
    t.string   "phone"
    t.hstore   "hours"
    t.boolean  "tours"
    t.boolean  "tasting_room"
    t.boolean  "growlers"
    t.boolean  "bottles"
    t.boolean  "food"
    t.string   "menu"
    t.string   "cuisine"
    t.string   "price"
    t.text     "summary"
    t.text     "website"
    t.text     "untapped_id"
    t.boolean  "closed",       default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "city_id"
  end

  add_index "locations", ["bottles"], name: "index_locations_on_bottles", using: :btree
  add_index "locations", ["cuisine"], name: "index_locations_on_cuisine", using: :btree
  add_index "locations", ["food"], name: "index_locations_on_food", using: :btree
  add_index "locations", ["growlers"], name: "index_locations_on_growlers", using: :btree
  add_index "locations", ["hours"], name: "index_locations_on_hours", using: :btree
  add_index "locations", ["name"], name: "index_locations_on_name", using: :btree
  add_index "locations", ["neighborhood"], name: "index_locations_on_neighborhood", using: :btree
  add_index "locations", ["price"], name: "index_locations_on_price", using: :btree
  add_index "locations", ["tasting_room"], name: "index_locations_on_tasting_room", using: :btree
  add_index "locations", ["tours"], name: "index_locations_on_tours", using: :btree

  create_table "messages", force: true do |t|
    t.integer  "user_id"
    t.text     "title"
    t.text     "body"
    t.text     "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "read",       default: false
    t.string   "recipient"
  end

  create_table "posts", force: true do |t|
    t.integer  "user_id"
    t.text     "title"
    t.text     "body"
    t.datetime "published_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree

  create_table "tags", force: true do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
    t.string   "username",                               null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
