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

ActiveRecord::Schema.define(:version => 20131203101840) do

  create_table "partner_polling_polls", :force => true do |t|
    t.string   "name"
    t.text     "question"
    t.string   "answer_1"
    t.text     "message_1"
    t.text     "url_1"
    t.string   "answer_2"
    t.text     "message_2"
    t.text     "url_2"
    t.string   "answer_3"
    t.text     "message_3"
    t.text     "url_3"
    t.string   "answer_4"
    t.text     "message_4"
    t.text     "url_4"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "partner_polling_votes", :force => true do |t|
    t.integer  "poll_id"
    t.integer  "answer_number"
    t.boolean  "redirected",    :default => false
    t.datetime "created_at"
  end

  add_index "partner_polling_votes", ["poll_id"], :name => "index_partner_polling_votes_on_poll_id"

end
