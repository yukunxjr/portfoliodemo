# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_20_031650) do

  create_table "learning_items", force: :cascade do |t|
    t.string "name"
    t.time "study_time"
    t.integer "user_id_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id_id"], name: "index_learning_items_on_user_id_id"
  end

  create_table "learns", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_learns_on_user_id"
  end

  create_table "level_settings", force: :cascade do |t|
    t.integer "level"
    t.integer "thresold"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "memos", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "discarded_at", precision: 6
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url"
    t.integer "user_id", null: false
    t.integer "exp", default: 50
    t.index ["discarded_at"], name: "index_posts_on_discarded_at"
    t.index ["user_id"], name: "index_memos_on_user_id"
  end

  create_table "studies", force: :cascade do |t|
    t.float "time"
    t.date "date"
    t.integer "learn_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["learn_id"], name: "index_studies_on_learn_id"
    t.index ["user_id"], name: "index_studies_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "level", default: 1
    t.integer "exp", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "memos", "users"
  add_foreign_key "studies", "users"
end
