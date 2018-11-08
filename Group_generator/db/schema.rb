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

ActiveRecord::Schema.define(version: 2018_05_11_143122) do

  create_table "resultsaves", force: :cascade do |t|
    t.text "team1"
    t.text "team2"
    t.text "team3"
    t.text "tutor1"
    t.text "tutor2"
    t.text "tutor3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
