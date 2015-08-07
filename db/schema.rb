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

ActiveRecord::Schema.define(version: 20150407193525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.string   "reaction_number"
    t.float    "reaction_time"
    t.string   "solvent"
    t.text     "procedure"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "reactants", force: :cascade do |t|
    t.boolean  "starting_material", default: false, null: false
    t.float    "equivalents"
    t.integer  "entry_id"
    t.integer  "reagent_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "reactants", ["entry_id"], name: "index_reactants_on_entry_id", using: :btree
  add_index "reactants", ["reagent_id"], name: "index_reactants_on_reagent_id", using: :btree

  create_table "reagents", force: :cascade do |t|
    t.string   "name"
    t.string   "cas_num"
    t.float    "mol_weight"
    t.string   "phase"
    t.float    "density"
    t.float    "molarity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reactants", "entries"
  add_foreign_key "reactants", "reagents"
end
