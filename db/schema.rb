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

ActiveRecord::Schema.define(:version => 20110126190122) do

  create_table "currencies", :force => true do |t|
    t.string   "name"
    t.string   "symbol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "location_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_items", :force => true do |t|
    t.integer  "menu_page_id"
    t.float    "x_pos"
    t.float    "y_pos"
    t.float    "price"
    t.integer  "menu_section_id"
    t.integer  "dish_id"
    t.boolean  "is_questionable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_pages", :force => true do |t|
    t.integer  "menu_id"
    t.integer  "page_number"
    t.string   "repository_uuid"
    t.string   "catalog_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_section_instances", :force => true do |t|
    t.integer  "menu_page_id"
    t.integer  "menu_section_id"
    t.float    "x_pos"
    t.float    "y_pos"
    t.float    "width"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_sections", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.integer  "location_id"
    t.date     "date_of_menu"
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.boolean  "is_sectioned"
    t.boolean  "is_approved"
    t.integer  "currency_id"
    t.integer  "institution_id", :default => 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "original_menus", :force => true do |t|
    t.string   "sponsor"
    t.string   "event"
    t.string   "orig_date"
    t.string   "place"
    t.string   "physical_description"
    t.string   "occasion"
    t.string   "venue"
    t.string   "organization"
    t.string   "notes"
    t.string   "call_number"
    t.string   "keywords"
    t.string   "date"
    t.string   "language"
    t.string   "city"
    t.string   "state"
    t.string   "digital_id"
    t.string   "textdate"
    t.string   "digi_struc"
    t.string   "dateadded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
