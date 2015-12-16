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

ActiveRecord::Schema.define(version: 20151215172425) do

  create_table "countries", force: :cascade do |t|
    t.string   "iso_code",                   limit: 255
    t.string   "name_en",                    limit: 255
    t.string   "name_local",                 limit: 255
    t.string   "country_flag",               limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "regime_type",                limit: 255
    t.string   "signed_validated",           limit: 255
    t.string   "compliance_footer",          limit: 255
    t.string   "footer_note",                limit: 255
    t.string   "archv_tw",                   limit: 255
    t.string   "taulia_pdf",                 limit: 255
    t.text     "suppliers_responsibilities", limit: 65535
    t.text     "buyer_responsibilities",     limit: 65535
    t.string   "taulia_compliante",          limit: 255
  end

  create_table "einvoices", force: :cascade do |t|
    t.integer  "country_id",                 limit: 4
    t.integer  "regime_id",                  limit: 4
    t.string   "signed_validated",           limit: 255
    t.string   "compliance_footer",          limit: 255
    t.string   "footer_note",                limit: 255
    t.string   "archv_tw",                   limit: 255
    t.string   "taulia_pdf",                 limit: 255
    t.text     "suppliers_responsibilities", limit: 65535
    t.text     "buyer_responsibilities",     limit: 65535
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "role_type",   limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "taulia_einvoices", force: :cascade do |t|
    t.integer  "country_id",        limit: 4
    t.boolean  "taulia_compliante"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "tax_regimes", force: :cascade do |t|
    t.string   "regime_type",        limit: 255
    t.text     "regime_description", limit: 65535
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "firstname",              limit: 255
    t.string   "lastname",               limit: 255
    t.string   "department",             limit: 255
    t.integer  "role_id",                limit: 4
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
