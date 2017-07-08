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

ActiveRecord::Schema.define(version: 20170603162411) do

  create_table "ar_internal_metadata", primary_key: "key", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ar_internal_metadata", ["key"], name: "sqlite_autoindex_ar_internal_metadata_1", unique: true

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["brand_id"], name: "index_categories_on_brand_id"
  add_index "categories", ["name"], name: "index_categories_on_name"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "device_id"
    t.integer  "brand_id"
    t.decimal  "price"
    t.integer  "stock_quantity"
    t.date     "date_expected_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "products", ["brand_id"], name: "index_products_on_brand_id"
  add_index "products", ["description"], name: "index_products_on_description"
  add_index "products", ["device_id"], name: "index_products_on_device_id"
  add_index "products", ["name"], name: "index_products_on_name"

  create_table "user_sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "type",                             default: "Customer"
    t.text     "billing_address"
    t.text     "shipping_address"
    t.string   "crypted_password",     limit: 128, default: "",         null: false
    t.string   "password_salt",        limit: 128, default: "",         null: false
    t.string   "persistence_token"
    t.string   "perishable_token",     limit: 128
    t.string   "single_access_token"
    t.integer  "login_count",                      default: 0
    t.integer  "failed_login_count",               default: 0
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.boolean  "active",                           default: false,      null: false
    t.string   "activation_token"
    t.string   "password_reset_token"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

end
