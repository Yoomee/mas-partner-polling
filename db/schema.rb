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

ActiveRecord::Schema.define(:version => 20140109111556) do

  create_table "partner_polling_audit_records", :force => true do |t|
    t.integer  "user_id"
    t.string   "resource_type"
    t.string   "resource_id"
    t.string   "action"
    t.datetime "created_at"
  end

  add_index "partner_polling_audit_records", ["resource_type", "resource_id"], :name => "index_partner_polling_audit_records_on_resource"

  create_table "partner_polling_partners", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "color_1"
    t.string   "color_2"
    t.string   "color_3"
    t.string   "color_4"
    t.string   "call_to_action_color"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "partner_polling_partners", ["slug"], :name => "index_partner_polling_partners_on_slug", :unique => true

  create_table "partner_polling_polls", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "question"
    t.string   "answer_1"
    t.string   "answer_2"
    t.string   "answer_3"
    t.string   "answer_4"
    t.boolean  "archived",   :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "partner_polling_polls", ["slug"], :name => "index_partner_polling_polls_on_slug", :unique => true

  create_table "partner_polling_redirections", :force => true do |t|
    t.integer  "widget_id"
    t.integer  "vote_id"
    t.integer  "answer_number"
    t.string   "ip_address"
    t.datetime "created_at"
  end

  add_index "partner_polling_redirections", ["widget_id"], :name => "index_partner_polling_redirections_on_widget_id"

  create_table "partner_polling_users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "partner_polling_users", ["email"], :name => "index_partner_polling_users_on_email", :unique => true
  add_index "partner_polling_users", ["reset_password_token"], :name => "index_partner_polling_users_on_reset_password_token", :unique => true

  create_table "partner_polling_votes", :force => true do |t|
    t.integer  "widget_id"
    t.integer  "answer_number"
    t.string   "ip_address"
    t.datetime "created_at"
  end

  add_index "partner_polling_votes", ["widget_id"], :name => "index_partner_polling_votes_on_widget_id"

  create_table "partner_polling_widget_hosts", :force => true do |t|
    t.integer  "widget_id"
    t.text     "url"
    t.string   "name"
    t.datetime "created_at"
  end

  add_index "partner_polling_widget_hosts", ["widget_id"], :name => "index_partner_polling_widget_hosts_on_widget_id"

  create_table "partner_polling_widgets", :force => true do |t|
    t.integer  "poll_id"
    t.integer  "partner_id"
    t.text     "call_to_action_text_1"
    t.text     "call_to_action_url_1"
    t.string   "color_1"
    t.text     "call_to_action_text_2"
    t.text     "call_to_action_url_2"
    t.string   "color_2"
    t.text     "call_to_action_text_3"
    t.text     "call_to_action_url_3"
    t.string   "color_3"
    t.text     "call_to_action_text_4"
    t.text     "call_to_action_url_4"
    t.string   "color_4"
    t.text     "default_call_to_action_text"
    t.text     "default_call_to_action_url"
    t.string   "call_to_action_color"
    t.boolean  "logo",                        :default => true
    t.boolean  "see_results",                 :default => true
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  add_index "partner_polling_widgets", ["partner_id"], :name => "index_partner_polling_widgets_on_partner_id"
  add_index "partner_polling_widgets", ["poll_id"], :name => "index_partner_polling_widgets_on_poll_id"

end
