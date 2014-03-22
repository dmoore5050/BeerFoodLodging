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

ActiveRecord::Schema.define(version: 20140321172449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "bars", force: true do |t|
    t.integer  "neighborhood_id"
    t.text     "name"
    t.text     "address"
    t.string   "phone"
    t.hstore   "hours"
    t.boolean  "food"
    t.boolean  "growlers"
    t.boolean  "bottles"
    t.text     "summary"
    t.text     "website"
    t.text     "untapped_id"
    t.boolean  "closed",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bars", ["bottles"], name: "index_bars_on_bottles", using: :btree
  add_index "bars", ["food"], name: "index_bars_on_food", using: :btree
  add_index "bars", ["growlers"], name: "index_bars_on_growlers", using: :btree
  add_index "bars", ["hours"], name: "index_bars_on_hours", using: :btree
  add_index "bars", ["name"], name: "index_bars_on_name", using: :btree

  create_table "beer_stores", force: true do |t|
    t.integer  "neighborhood_id"
    t.text     "name"
    t.text     "address"
    t.string   "phone"
    t.hstore   "hours"
    t.boolean  "growlers"
    t.text     "summary"
    t.text     "website"
    t.text     "untapped_id"
    t.boolean  "closed",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beer_stores", ["growlers"], name: "index_beer_stores_on_growlers", using: :btree
  add_index "beer_stores", ["hours"], name: "index_beer_stores_on_hours", using: :btree
  add_index "beer_stores", ["name"], name: "index_beer_stores_on_name", using: :btree

  create_table "breweries", force: true do |t|
    t.integer  "neighborhood_id"
    t.string   "name"
    t.text     "address"
    t.string   "phone"
    t.hstore   "hours"
    t.boolean  "tours"
    t.boolean  "tasting_room"
    t.boolean  "growlers"
    t.boolean  "bottles"
    t.boolean  "food"
    t.text     "summary"
    t.text     "website"
    t.text     "untapped_id"
    t.boolean  "closed",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "breweries", ["bottles"], name: "index_breweries_on_bottles", using: :btree
  add_index "breweries", ["food"], name: "index_breweries_on_food", using: :btree
  add_index "breweries", ["growlers"], name: "index_breweries_on_growlers", using: :btree
  add_index "breweries", ["hours"], name: "index_breweries_on_hours", using: :btree
  add_index "breweries", ["name"], name: "index_breweries_on_name", using: :btree
  add_index "breweries", ["tasting_room"], name: "index_breweries_on_tasting_room", using: :btree
  add_index "breweries", ["tours"], name: "index_breweries_on_tours", using: :btree

  create_table "brewpubs", force: true do |t|
    t.integer  "neighborhood_id"
    t.text     "name"
    t.text     "address"
    t.string   "phone"
    t.hstore   "hours"
    t.boolean  "tours"
    t.boolean  "growlers"
    t.boolean  "bottles"
    t.text     "summary"
    t.text     "website"
    t.text     "untapped_id"
    t.boolean  "closed",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "brewpubs", ["bottles"], name: "index_brewpubs_on_bottles", using: :btree
  add_index "brewpubs", ["growlers"], name: "index_brewpubs_on_growlers", using: :btree
  add_index "brewpubs", ["hours"], name: "index_brewpubs_on_hours", using: :btree
  add_index "brewpubs", ["name"], name: "index_brewpubs_on_name", using: :btree
  add_index "brewpubs", ["tours"], name: "index_brewpubs_on_tours", using: :btree

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

  create_table "lodgings", force: true do |t|
    t.integer  "neighborhood_id"
    t.text     "name"
    t.text     "address"
    t.string   "phone"
    t.text     "summary"
    t.boolean  "closed",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lodgings", ["name"], name: "index_lodgings_on_name", using: :btree

  create_table "neighborhoods", force: true do |t|
    t.integer  "city_id"
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "neighborhoods", ["name"], name: "index_neighborhoods_on_name", using: :btree

  create_table "posts", force: true do |t|
    t.integer  "user_id"
    t.text     "title"
    t.text     "body"
    t.string   "category"
    t.string   "tags",         array: true
    t.date     "published_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["category"], name: "index_posts_on_category", using: :btree
  add_index "posts", ["tags"], name: "index_posts_on_tags", using: :btree

  create_table "restaurants", force: true do |t|
    t.integer  "neighborhood_id"
    t.text     "name"
    t.text     "address"
    t.string   "phone"
    t.hstore   "hours"
    t.string   "cuisine"
    t.string   "price"
    t.boolean  "growlers"
    t.boolean  "bottles"
    t.text     "summary"
    t.text     "website"
    t.text     "untapped_id"
    t.boolean  "closed",          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["bottles"], name: "index_restaurants_on_bottles", using: :btree
  add_index "restaurants", ["cuisine"], name: "index_restaurants_on_cuisine", using: :btree
  add_index "restaurants", ["growlers"], name: "index_restaurants_on_growlers", using: :btree
  add_index "restaurants", ["hours"], name: "index_restaurants_on_hours", using: :btree
  add_index "restaurants", ["name"], name: "index_restaurants_on_name", using: :btree
  add_index "restaurants", ["price"], name: "index_restaurants_on_price", using: :btree

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
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
