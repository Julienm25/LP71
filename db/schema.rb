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

ActiveRecord::Schema.define(version: 20190322094612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "oderlines", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_oderlines_on_order_id", using: :btree
    t.index ["product_id"], name: "index_oderlines_on_product_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.string   "adress"
    t.string   "town"
    t.string   "zipcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "produits", force: :cascade do |t|
    t.string   "Nom"
    t.string   "Description"
    t.float    "Prix"
    t.string   "Image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.date     "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "oderlines", "orders"
  add_foreign_key "oderlines", "products"
end
