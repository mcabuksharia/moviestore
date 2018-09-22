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

ActiveRecord::Schema.define(version: 20180819083726) do

  create_table "articles", force: :cascade do |t|
    t.integer  "category_id",  limit: 4
    t.string   "name",         limit: 255
    t.string   "article_type", limit: 255
    t.string   "author",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "category_type", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "article_id",  limit: 4
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "posted_by",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "emp_name",    limit: 255
    t.string   "designation", limit: 255
    t.float    "salary",      limit: 24
    t.string   "address",     limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.decimal  "price",                     precision: 10
    t.datetime "starts_at"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.datetime "end_date"
  end

  create_table "guests", force: :cascade do |t|
    t.integer  "comment_id", limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.integer  "release_year", limit: 4
    t.float    "price",        limit: 24
    t.text     "description",  limit: 65535
    t.string   "imdb_id",      limit: 255
    t.string   "poster_url",   limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "imageable_id",   limit: 4
    t.string   "imageable_type", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "image",          limit: 255
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name", limit: 255
    t.string   "description",  limit: 255
    t.float    "price",        limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "tags", force: :cascade do |t|
    t.integer  "article_id", limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "viehcles", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "type",        limit: 255
    t.string   "description", limit: 255
    t.string   "color",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
