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

ActiveRecord::Schema.define(version: 20160224103602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "domicil"
    t.string   "rue"
    t.string   "porte"
    t.string   "email"
    t.string   "contry"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["person_id"], name: "index_addresses_on_person_id", using: :btree

  create_table "operations", force: :cascade do |t|
    t.integer  "person_id"
    t.string   "number_owner"
    t.string   "number_sender"
    t.string   "type_op"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "operations", ["person_id"], name: "index_operations_on_person_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "sexe"
    t.date     "date_nai"
    t.string   "lieu_nai"
    t.string   "contact"
    t.string   "email"
    t.string   "country"
    t.string   "city"
    t.string   "address"
    t.string   "rue"
    t.string   "porte"
    t.string   "codecustom"
    t.string   "num"
    t.datetime "created_at",          default: '2016-02-24 16:11:49'
    t.datetime "updated_at",          default: '2016-02-24 16:11:49'
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "people_sims", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "sim_carte_id"
    t.datetime "created_at",   default: '2016-02-24 16:11:49'
    t.datetime "updated_at",   default: '2016-02-24 16:11:49'
  end

  add_index "people_sims", ["person_id"], name: "index_people_sims_on_person_id", using: :btree
  add_index "people_sims", ["sim_carte_id"], name: "index_people_sims_on_sim_carte_id", using: :btree

  create_table "sim_cartes", force: :cascade do |t|
    t.string   "numero"
    t.boolean  "status",      default: false
    t.datetime "date_active"
    t.datetime "created_at",  default: '2016-02-24 16:11:49'
    t.datetime "updated_at",  default: '2016-02-24 16:11:49'
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "username"
    t.string   "nom"
    t.string   "prenom"
    t.string   "role",                   default: "Inviter"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "addresses", "people"
  add_foreign_key "operations", "people"
  add_foreign_key "people_sims", "people"
  add_foreign_key "people_sims", "sim_cartes"
end
