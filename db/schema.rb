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

ActiveRecord::Schema.define(version: 20170828002007) do

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name", limit: 16
    t.string "last_name"
    t.string "email_address"
    t.string "address_line_one"
    t.string "address_line_two"
    t.string "address_city"
    t.string "address_state", limit: 2
    t.integer "address_zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_zip"], name: "index_users_on_address_zip"
    t.index ["email_address"], name: "index_users_on_email_address"
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["last_name"], name: "index_users_on_last_name"
  end

end
