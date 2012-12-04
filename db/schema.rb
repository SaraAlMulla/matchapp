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

ActiveRecord::Schema.define(:version => 20121204101449) do

  create_table "fans", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "fans", ["email"], :name => "index_fans_on_email", :unique => true

  create_table "matches", :force => true do |t|
    t.string   "match_type"
    t.boolean  "home"
    t.integer  "opponent_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "opponents", :force => true do |t|
    t.string   "name"
    t.string   "skill_level"
    t.integer  "home_capacity"
    t.boolean  "domestic"
    t.boolean  "rival"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tickets", :force => true do |t|
    t.integer  "quantity"
    t.string   "ticket_type"
    t.integer  "fan_id"
    t.integer  "match_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
