# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_15_231529) do

  create_table "addresses", charset: "utf8mb4", force: :cascade do |t|
    t.string "address", null: false
    t.string "postal_code", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "district_id", null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
    t.index ["district_id"], name: "index_addresses_on_district_id"
  end

  create_table "administrators", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", null: false
    t.string "password", null: false
    t.string "username", null: false
    t.string "name", null: false
    t.string "lastname", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "province_id", null: false
    t.index ["province_id"], name: "index_cities_on_province_id"
  end

  create_table "countries", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "lastname", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discounts", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.decimal "discount_percent", precision: 10, null: false
    t.boolean "active", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "product_id", null: false
    t.index ["product_id"], name: "index_discounts_on_product_id"
  end

  create_table "districts", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "city_id", null: false
    t.index ["city_id"], name: "index_districts_on_city_id"
  end

  create_table "order_details", charset: "utf8mb4", force: :cascade do |t|
    t.integer "quantity", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", null: false
    t.bigint "product_id", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
    t.index ["product_id"], name: "index_order_details_on_product_id"
  end

  create_table "orders", charset: "utf8mb4", force: :cascade do |t|
    t.string "order_code", null: false
    t.decimal "total", precision: 10, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "shipping_method_id", null: false
    t.bigint "payment_method_id", null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["payment_method_id"], name: "index_orders_on_payment_method_id"
    t.index ["shipping_method_id"], name: "index_orders_on_shipping_method_id"
  end

  create_table "payment_methods", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "product_code", null: false
    t.text "description"
    t.string "image"
    t.decimal "price", precision: 10, null: false
    t.decimal "weight", precision: 10
    t.string "status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "provinces", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "country_id", null: false
    t.index ["country_id"], name: "index_provinces_on_country_id"
  end

  create_table "shipping_methods", charset: "utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "price", precision: 10, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wharehouses", charset: "utf8mb4", force: :cascade do |t|
    t.string "wharehouse_code", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "product_id", null: false
    t.index ["product_id"], name: "index_wharehouses_on_product_id"
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "addresses", "districts"
  add_foreign_key "cities", "provinces"
  add_foreign_key "discounts", "products"
  add_foreign_key "districts", "cities"
  add_foreign_key "order_details", "orders"
  add_foreign_key "order_details", "products"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "payment_methods"
  add_foreign_key "orders", "shipping_methods"
  add_foreign_key "products", "categories"
  add_foreign_key "provinces", "countries"
  add_foreign_key "wharehouses", "products"
end
