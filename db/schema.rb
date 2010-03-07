# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100307003624) do

  create_table "authorships", :force => true do |t|
    t.integer  "brewer_id"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brewers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hops_types", :force => true do |t|
    t.string   "name"
    t.float    "alpha"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", :force => true do |t|
    t.string   "name",                           :null => false
    t.text     "description"
    t.boolean  "private",     :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "yeast_types", :force => true do |t|
    t.string   "name"
    t.float    "attenuation"
    t.float    "flocculation"
    t.integer  "min_temp"
    t.integer  "max_temp"
    t.string   "type"
    t.string   "format"
    t.string   "manufacturer"
    t.string   "origin"
    t.boolean  "is_lager"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
