# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_10_191342) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mail_events", force: :cascade do |t|
    t.string "event_type"
    t.string "message_id"
    t.string "message_stream"
    t.string "tag"
    t.boolean "first", default: true
    t.string "country"
    t.string "region"
    t.string "city"
    t.string "zip"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
