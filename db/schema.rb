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

ActiveRecord::Schema.define(version: 20150730124749) do

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.string   "company_contact_phone"
    t.string   "company_email"
    t.string   "company_country"
    t.string   "company_contact_name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.datetime "deleted_at"
  end

  add_index "companies", ["deleted_at"], name: "index_companies_on_deleted_at"

  create_table "contracts", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "currency"
    t.integer  "amount"
    t.string   "contact"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.string   "country"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "company_id"
    t.datetime "deleted_at"
  end

  add_index "contracts", ["company_id"], name: "index_contracts_on_company_id"
  add_index "contracts", ["deleted_at"], name: "index_contracts_on_deleted_at"
  add_index "contracts", ["user_id"], name: "index_contracts_on_user_id"

  create_table "invoices", force: :cascade do |t|
    t.integer  "contract_id"
    t.integer  "amount"
    t.date     "payment_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.datetime "deleted_at"
  end

  add_index "invoices", ["contract_id"], name: "index_invoices_on_contract_id"
  add_index "invoices", ["deleted_at"], name: "index_invoices_on_deleted_at"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.boolean  "admin"
    t.integer  "login_count"
    t.boolean  "deleted"
    t.datetime "last_sign_in_at"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.datetime "deleted_at"
  end

  add_index "users", ["deleted_at"], name: "index_users_on_deleted_at"

end
