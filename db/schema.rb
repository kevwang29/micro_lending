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

ActiveRecord::Schema.define(:version => 20111117185707) do

  create_table "badge_lists", :force => true do |t|
    t.integer  "luid"
    t.integer  "bid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "badges", :force => true do |t|
    t.integer  "bid"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "borrowers", :force => true do |t|
    t.integer  "buid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "category"
    t.text     "description"
    t.integer  "sum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", :force => true do |t|
    t.integer  "uid"
    t.integer  "fuid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kevins", :force => true do |t|
    t.integer  "identifier"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "class"
    t.integer  "exp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lenders", :force => true do |t|
    t.integer  "luid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "class_type"
    t.integer  "experience"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "credit"
  end

  create_table "stories", :force => true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "story_choices", :force => true do |t|
    t.integer  "sid"
    t.text     "choices"
    t.integer  "mapping"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", :force => true do |t|
    t.integer  "luid"
    t.integer  "buid"
    t.decimal  "amount",     :precision => 10, :scale => 0
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "class"
    t.integer  "exp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
