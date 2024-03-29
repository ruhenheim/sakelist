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

ActiveRecord::Schema.define(version: 2019_03_24_055255) do

  create_table "sakenote_makers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "maker_id"
    t.string "maker_name"
    t.string "maker_postcode"
    t.string "maker_address"
    t.string "maker_url"
    t.string "url"
    t.boolean "close"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sakenote_sakes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "sake_identify_code"
    t.string "sake_name"
    t.string "sake_furigana"
    t.string "sake_alphabet"
    t.bigint "maker_id"
    t.string "maker_name"
    t.string "maker_postcode"
    t.string "maker_address"
    t.string "maker_url"
    t.string "url"
    t.boolean "discontinued"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
