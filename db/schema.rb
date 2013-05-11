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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130421090401) do

  create_table "mtb_among_card_expantions", :force => true do |t|
    t.integer  "mtb_card_id"
    t.integer  "mtb_expantion_id"
    t.string   "override_name"
    t.text     "override_text"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "mtb_among_card_types", :force => true do |t|
    t.integer  "mtb_card_id"
    t.integer  "mtb_card_type_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "mtb_card_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mtb_cards", :force => true do |t|
    t.string   "name"
    t.string   "jname"
    t.text     "text"
    t.integer  "cost"
    t.integer  "need_pot"
    t.integer  "coin"
    t.integer  "victory"
    t.integer  "card"
    t.integer  "action"
    t.integer  "buy"
    t.integer  "virtual_coin"
    t.integer  "vitory_token"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "mtb_expantions", :force => true do |t|
    t.string   "name"
    t.date     "released_at"
    t.integer  "mtb_publisher_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "mtb_publishers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
