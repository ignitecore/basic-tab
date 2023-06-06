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

ActiveRecord::Schema[7.0].define(version: 2023_06_06_201748) do
  create_table "addons", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "orders_id", null: false
    t.index ["orders_id"], name: "index_addons_on_orders_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "orders_id", null: false
    t.index ["orders_id"], name: "index_items_on_orders_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addons", "orders", column: "orders_id"
  add_foreign_key "items", "orders", column: "orders_id"
end
