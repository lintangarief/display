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

ActiveRecord::Schema.define(version: 20180707110326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.text     "address"
    t.text     "city"
    t.text     "state"
    t.string   "zip"
    t.text     "phone_number"
    t.integer  "display_slot"
    t.integer  "seller_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
    t.integer  "subcribe_type_id"
  end

  add_index "businesses", ["email"], name: "index_businesses_on_email", unique: true, using: :btree
  add_index "businesses", ["invitation_token"], name: "index_businesses_on_invitation_token", unique: true, using: :btree
  add_index "businesses", ["invitations_count"], name: "index_businesses_on_invitations_count", using: :btree
  add_index "businesses", ["invited_by_id"], name: "index_businesses_on_invited_by_id", using: :btree
  add_index "businesses", ["reset_password_token"], name: "index_businesses_on_reset_password_token", unique: true, using: :btree

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "displays", force: true do |t|
    t.integer  "outlet_id"
    t.string   "code_display"
    t.integer  "mode",         default: 1
    t.datetime "started_at"
    t.datetime "expired_at"
    t.datetime "sync_at"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "code",         default: 0
    t.integer  "storage_type", default: 1
    t.integer  "storage",      default: 0
  end

  create_table "outlets", force: true do |t|
    t.integer  "business_id"
    t.string   "name"
    t.text     "address"
    t.text     "city"
    t.text     "state"
    t.string   "zip"
    t.text     "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playlist_contents", force: true do |t|
    t.integer  "playlist_id"
    t.string   "content"
    t.integer  "col"
    t.integer  "row"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_deleted",  default: false
  end

  create_table "playlists", force: true do |t|
    t.string   "name"
    t.string   "playlist_type"
    t.string   "template"
    t.integer  "transition"
    t.text     "text_information"
    t.string   "backgroud_text"
    t.string   "color_text"
    t.integer  "speed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "business_id"
    t.integer  "column_type"
    t.boolean  "is_deleted",       default: false
  end

  create_table "sellers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "phone_number"
    t.text     "email"
    t.text     "password"
    t.string   "code_seller"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcribe_types", force: true do |t|
    t.string   "type"
    t.integer  "storage_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
