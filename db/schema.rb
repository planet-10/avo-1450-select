# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_28_091523) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "farmer_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "secretary_farmer_id"
    t.index ["secretary_farmer_id"], name: "index_farmer_groups_on_secretary_farmer_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.string "name"
    t.bigint "farmers_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farmers_id"], name: "index_farmers_on_farmers_id"
  end

  add_foreign_key "farmer_groups", "farmers", column: "secretary_farmer_id"
  add_foreign_key "farmers", "farmers", column: "farmers_id"
end
