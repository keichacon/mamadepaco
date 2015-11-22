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

ActiveRecord::Schema.define(version: 20151120093410) do

  create_table "artesanos", force: :cascade do |t|
    t.string   "tipo"
    t.string   "nombre"
    t.text     "exp"
    t.string   "region"
    t.string   "t_taller"
    t.string   "t_artesania"
    t.text     "desc"
    t.string   "logo"
    t.string   "foto"
    t.string   "banner1"
    t.string   "banner2"
    t.string   "banner3"
    t.string   "banner4"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "productos", force: :cascade do |t|
    t.integer  "artesano_id"
    t.string   "artesano"
    t.string   "nombre"
    t.text     "desc"
    t.integer  "precio"
    t.string   "area"
    t.string   "tipo"
    t.string   "material"
    t.string   "color"
    t.string   "foto1"
    t.string   "foto2"
    t.string   "foto3"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "productos", ["artesano_id"], name: "index_productos_on_artesano_id"

end
