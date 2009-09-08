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

ActiveRecord::Schema.define(:version => 20090609123100) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_links", :id => false, :force => true do |t|
    t.integer "category_id", :limit => 11
    t.integer "link_id",     :limit => 11
  end

  create_table "exercises", :force => true do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "target_muscle_id",   :limit => 11
    t.string   "instruction"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size",    :limit => 11
    t.datetime "photo_updated_at"
  end

  create_table "links", :force => true do |t|
    t.string   "url"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "phone"
    t.string   "email"
    t.string   "subject"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.integer  "parent_id",       :limit => 11
    t.string   "navlabel"
    t.integer  "position",        :limit => 11
    t.boolean  "redirect"
    t.string   "action_name"
    t.string   "controller_name"
    t.string   "navcolor"
    t.boolean  "member_page"
    t.boolean  "public_page"
  end

  create_table "program_exercises", :force => true do |t|
    t.integer  "target_muscle_id", :limit => 11
    t.integer  "exercise_id",      :limit => 11
    t.integer  "repititions",      :limit => 11
    t.string   "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_id",       :limit => 11
    t.integer  "position",         :limit => 11
  end

  create_table "programs", :force => true do |t|
    t.text     "description"
    t.integer  "user_id",        :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "completed"
    t.datetime "start_date"
    t.datetime "follow_up_date"
    t.string   "warm_up",        :limit => 100
    t.string   "cool_down",      :limit => 100
    t.string   "remember"
    t.string   "strech"
    t.string   "exercise_type",  :limit => 15
    t.string   "goal",           :limit => 100
  end

  create_table "target_muscles", :force => true do |t|
    t.string   "muscle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.boolean  "admin_user"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size",           :limit => 11
    t.datetime "photo_updated_at"
  end

end
