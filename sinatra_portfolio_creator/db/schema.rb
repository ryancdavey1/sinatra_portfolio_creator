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

ActiveRecord::Schema.define(version: 2020_08_26_172509) do

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "user_id"
    t.boolean "javascript"
    t.boolean "html_and_css"
    t.boolean "sql"
    t.boolean "python"
    t.boolean "java"
    t.boolean "ruby"
    t.boolean "swift"
    t.boolean "c_sharp"
    t.boolean "c"
    t.boolean "php"
    t.string "start_date"
    t.string "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "sinatra"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
