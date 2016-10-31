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

ActiveRecord::Schema.define(version: 20161031002121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "district"
    t.string   "city"
    t.string   "cep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
  end

  add_index "addresses", ["student_id"], name: "index_addresses_on_student_id", using: :btree

  create_table "admins", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "availabilities", force: :cascade do |t|
    t.date     "date1"
    t.date     "date2"
    t.date     "date3"
    t.date     "date4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
  end

  add_index "availabilities", ["student_id"], name: "index_availabilities_on_student_id", using: :btree

  create_table "phones", force: :cascade do |t|
    t.string   "number"
    t.integer  "phone_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
  end

  add_index "phones", ["student_id"], name: "index_phones_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.date     "date_birth"
    t.string   "rg"
    t.string   "cpf"
    t.date     "date_emission"
    t.string   "organ_emitter"
    t.string   "nationality"
    t.string   "civil_status"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "email"
    t.string   "profession"
    t.string   "scholarity"
    t.boolean  "vessel"
    t.boolean  "vessel_experience"
    t.integer  "payment_type"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "cnh"
    t.string   "document_photo_file_name"
    t.string   "document_photo_content_type"
    t.integer  "document_photo_file_size"
    t.datetime "document_photo_updated_at"
    t.string   "proof_of_address_file_name"
    t.string   "proof_of_address_content_type"
    t.integer  "proof_of_address_file_size"
    t.datetime "proof_of_address_updated_at"
    t.integer  "course"
    t.integer  "referrer"
  end

  add_foreign_key "addresses", "students"
  add_foreign_key "availabilities", "students"
  add_foreign_key "phones", "students"
end
