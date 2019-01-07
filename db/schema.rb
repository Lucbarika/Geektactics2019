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

ActiveRecord::Schema.define(version: 2019_01_05_203355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_feedbacks", force: :cascade do |t|
    t.text "content"
    t.bigint "course_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_feedbacks_on_course_id"
    t.index ["user_id"], name: "index_course_feedbacks_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "category"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "tool_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tool_id"], name: "index_purchases_on_tool_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
  end

  create_table "tool_feedbacks", force: :cascade do |t|
    t.bigint "tool_id"
    t.bigint "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tool_id"], name: "index_tool_feedbacks_on_tool_id"
    t.index ["user_id"], name: "index_tool_feedbacks_on_user_id"
  end

  create_table "tools", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "pdf_url"
    t.string "audio_url"
    t.integer "price"
    t.bigint "user_id"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_tools_on_course_id"
    t.index ["user_id"], name: "index_tools_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "teacher"
    t.boolean "student"
    t.string "first_name"
    t.string "last_name"
    t.text "biographie"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "course_feedbacks", "courses"
  add_foreign_key "course_feedbacks", "users"
  add_foreign_key "purchases", "tools"
  add_foreign_key "purchases", "users"
  add_foreign_key "tool_feedbacks", "tools"
  add_foreign_key "tool_feedbacks", "users"
  add_foreign_key "tools", "courses"
  add_foreign_key "tools", "users"
end
