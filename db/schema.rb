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

ActiveRecord::Schema.define(version: 20170613014107) do

  create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_accounts_on_person_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "cep"
    t.string "city"
    t.string "state"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_addresses_on_person_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "cod"
    t.string "name"
    t.decimal "price"
    t.integer "quantity"
    t.decimal "total"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_carts_on_person_id"
  end

  create_table "categories", force: :cascade do |t|
    t.integer "cod"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "cod"
    t.string "name"
    t.decimal "price"
    t.integer "quantity"
    t.decimal "total"
    t.integer "person_id"
    t.integer "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_orders_on_cart_id"
    t.index ["person_id"], name: "index_orders_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "phone"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_phones_on_person_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "cod"
    t.string "name"
    t.decimal "price"
    t.string "image"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

end
