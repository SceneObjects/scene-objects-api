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

ActiveRecord::Schema.define(version: 20150513030613) do

  create_table "scene_objects", force: :cascade do |t|
    t.string   "type"
    t.boolean  "locked"
    t.float    "position_x"
    t.float    "position_y"
    t.float    "position_z"
    t.string   "texture_type"
    t.string   "texture_url"
    t.float    "scale_x"
    t.float    "scale_y"
    t.float    "scale_z"
    t.float    "rotation_x"
    t.float    "rotation_y"
    t.float    "rotation_z"
    t.boolean  "hidden"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
