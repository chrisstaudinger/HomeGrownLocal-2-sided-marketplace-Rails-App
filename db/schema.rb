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

ActiveRecord::Schema.define(version: 2019_08_01_015431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.string "city"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "item_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_reviews", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "reviewer_id"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "rating"
    t.index ["item_id"], name: "index_item_reviews_on_item_id"
    t.index ["reviewer_id"], name: "index_item_reviews_on_reviewer_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "item_category_id"
    t.bigint "user_id"
    t.string "name"
    t.string "description"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "measurement_id"
    t.index ["item_category_id"], name: "index_items_on_item_category_id"
    t.index ["measurement_id"], name: "index_items_on_measurement_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "postcode"
    t.string "suburb"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
  end

  create_table "measurements", force: :cascade do |t|
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "order_id"
    t.string "message"
    t.float "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_requests_on_item_id"
    t.index ["order_id"], name: "index_requests_on_order_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "privilege"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_ratings", force: :cascade do |t|
    t.bigint "reviewee_id"
    t.bigint "reviewer_id"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reviewee_id"], name: "index_user_ratings_on_reviewee_id"
    t.index ["reviewer_id"], name: "index_user_ratings_on_reviewer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "role_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["location_id"], name: "index_users_on_location_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "watch_items", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "watchlist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_watch_items_on_item_id"
    t.index ["watchlist_id"], name: "index_watch_items_on_watchlist_id"
  end

  create_table "watchlists", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_watchlists_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cities", "states"
  add_foreign_key "item_reviews", "items"
  add_foreign_key "items", "item_categories"
  add_foreign_key "items", "measurements"
  add_foreign_key "items", "users"
  add_foreign_key "locations", "cities"
  add_foreign_key "orders", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "requests", "items"
  add_foreign_key "requests", "orders"
  add_foreign_key "watch_items", "items"
  add_foreign_key "watch_items", "watchlists"
  add_foreign_key "watchlists", "users"
end
