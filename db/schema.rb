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

ActiveRecord::Schema.define(version: 2018_06_26_175636) do

  create_table "envelopes", force: :cascade do |t|
    t.string "in_prod"
    t.string "model"
    t.string "fg_item"
    t.string "item"
    t.integer "fill_count"
    t.integer "in_sht_req"
    t.string "net_reqd"
    t.string "available"
    t.integer "avail_shts"
    t.string "whs_avail_now"
    t.integer "this_id"
    t.integer "linked_to_id"
    t.string "ship_whse"
    t.string "make_whse"
    t.integer "planned_env"
    t.integer "outs"
    t.string "uses_safety_stock"
    t.string "lined_type"
    t.date "e_date"
    t.string "scenario"
    t.text "note"
  end

end
