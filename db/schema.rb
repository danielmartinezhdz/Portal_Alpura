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

ActiveRecord::Schema.define(version: 20170303214720) do

  create_table "datatypes", force: :cascade do |t|
    t.string   "name"
    t.string   "expression"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "name_id"
    t.datetime "created_at",    precision: 6,  null: false
    t.datetime "updated_at",    precision: 6,  null: false
    t.integer  "webservice_id", precision: 38
  end

  add_index "jobs", ["webservice_id"], name: "index_jobs_on_webservice_id"

  create_table "params", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  precision: 6,  null: false
    t.datetime "updated_at",  precision: 6,  null: false
    t.integer  "datatype_id", precision: 38
  end

  add_index "params", ["datatype_id"], name: "index_params_on_datatype_id"

  create_table "webservices", force: :cascade do |t|
    t.string   "description"
    t.text     "wsdl"
    t.text     "url"
    t.datetime "created_at",  precision: 6, null: false
    t.datetime "updated_at",  precision: 6, null: false
  end

  add_foreign_key "jobs", "webservices"
  add_foreign_key "params", "datatypes"
end
