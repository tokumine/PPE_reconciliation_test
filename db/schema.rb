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

ActiveRecord::Schema.define(:version => 20091129074526) do

  create_table "fields", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fields_pas", :id => false, :force => true do |t|
    t.integer  "pa_id"
    t.integer  "field_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fields_pas", ["field_id"], :name => "index_fields_pas_on_field_id"
  add_index "fields_pas", ["pa_id"], :name => "index_fields_pas_on_pa_id"

  create_table "pas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
