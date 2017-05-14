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

ActiveRecord::Schema.define(version: 20170513223840) do

  create_table "imovels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "codigo"
    t.string "tipo"
    t.float "valor", limit: 24
    t.float "valorIPTU", limit: 24
    t.float "valorCondominio", limit: 24
    t.integer "numQUARTOS"
    t.integer "numSUITES"
    t.integer "numBANHEIROS"
    t.integer "numVAGAS"
    t.float "areaTOTAL", limit: 24
    t.string "extras"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
