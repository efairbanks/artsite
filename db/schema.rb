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

ActiveRecord::Schema.define(version: 20130927211137) do

  create_table "galleries", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "image_id"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.integer  "page_id"
    t.integer  "gallery_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "root_page"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "home_page"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
