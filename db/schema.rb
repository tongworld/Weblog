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

ActiveRecord::Schema.define(:version => 20120214162857) do

  create_table "affiliation", :primary_key => "affiliation_num", :force => true do |t|
    t.string "id",   :limit => 20, :null => false
    t.string "name", :limit => 40, :null => false
    t.string "type", :limit => 20, :null => false
  end

  add_index "affiliation", ["id"], :name => "ix_affiliation_id"
  add_index "affiliation", ["type"], :name => "ix_affiliation_type"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
  end

  create_table "reservation", :primary_key => "reservation_num", :force => true do |t|
    t.decimal  "location_num",                                              :null => false
    t.string   "confirmation",           :limit => 8,                       :null => false
    t.decimal  "drop_off_location_num"
    t.string   "user_id",                :limit => 20
    t.decimal  "rate_num"
    t.decimal  "form_of_payment_num"
    t.decimal  "affiliation_num"
    t.decimal  "rez_source_num"
    t.decimal  "vendor_num"
    t.decimal  "vendor_id"
    t.decimal  "consumer_num",                                              :null => false
    t.string   "airline",                :limit => 3
    t.string   "arriving_flight",        :limit => 20
    t.datetime "pickup_date"
    t.datetime "return_date"
    t.datetime "delivery_date"
    t.string   "delivered",              :limit => 1
    t.string   "status",                 :limit => 1
    t.datetime "booking_date"
    t.string   "request_written_conf",   :limit => 1
    t.string   "from_city",              :limit => 30
    t.string   "commission_type",        :limit => 5
    t.decimal  "commission_rate"
    t.decimal  "commission_amount"
    t.string   "fop_data",               :limit => 200
    t.string   "fop_comments",           :limit => 40
    t.datetime "fop_expire_date"
    t.string   "passport_1",             :limit => 20
    t.string   "passport_2",             :limit => 20
    t.string   "pnr",                    :limit => 15
    t.string   "cancelled_by",           :limit => 40
    t.string   "guarantee_flag",         :limit => 1
    t.string   "confirmed_by",           :limit => 30
    t.string   "corporate_discount_num", :limit => 30
    t.string   "availability_status",    :limit => 1
    t.decimal  "booking_length"
    t.datetime "date_modified"
    t.string   "comments",               :limit => 80
    t.decimal  "cur_sequence"
    t.decimal  "tm_revenue"
    t.decimal  "other_revenue"
    t.decimal  "airline_num"
    t.decimal  "rez_fee"
    t.decimal  "cancel_fee"
    t.datetime "cancel_date"
    t.decimal  "orig_reservation_num"
    t.datetime "expire_date"
    t.string   "email",                  :limit => 100
    t.decimal  "arrival_time"
    t.string   "frequent_flyer",         :limit => 25
    t.decimal  "dup_count",                             :default => 0.0
    t.string   "pin",                    :limit => 8,   :default => "null"
    t.string   "car_type",               :limit => 10
    t.string   "club_id",                :limit => 20
    t.string   "auth_code",              :limit => 100
    t.string   "type",                   :limit => 10
  end

  add_index "reservation", ["booking_date"], :name => "xif9993reservation"
  add_index "reservation", ["cancel_date"], :name => "ix_rez_canceldate"
  add_index "reservation", ["car_type"], :name => "ix_rez_cartype"
  add_index "reservation", ["commission_rate"], :name => "ix_rez_commrate"
  add_index "reservation", ["confirmation"], :name => "xif1reservation"
  add_index "reservation", ["consumer_num"], :name => "xif994reservation"
  add_index "reservation", ["date_modified"], :name => "ix_rez_datemod"
  add_index "reservation", ["delivered"], :name => "xie1reservation"
  add_index "reservation", ["expire_date"], :name => "xak1expire_date"
  add_index "reservation", ["location_num"], :name => "xie2reservation"
  add_index "reservation", ["orig_reservation_num"], :name => "xak10orig_reservation_num"
  add_index "reservation", ["pickup_date"], :name => "xif9996reservation"
  add_index "reservation", ["rate_num"], :name => "xakrate_num"
  add_index "reservation", ["return_date"], :name => "ix_rez_return_date"
  add_index "reservation", ["rez_source_num"], :name => "xakrez_source_num"
  add_index "reservation", ["status"], :name => "ix_rez_status"
  add_index "reservation", ["vendor_id"], :name => "ix_vendor_id"
  add_index "reservation", ["vendor_num"], :name => "xie3reservation"

  create_table "vendor", :primary_key => "vendor_id", :force => true do |t|
    t.string   "vendor_type",    :limit => 5,   :null => false
    t.string   "name",           :limit => 40
    t.string   "address",        :limit => 40
    t.string   "address2",       :limit => 40
    t.string   "city",           :limit => 30
    t.string   "zip",            :limit => 10
    t.decimal  "state_num"
    t.decimal  "country_num"
    t.string   "phone",          :limit => 20
    t.string   "email",          :limit => 100
    t.datetime "create_date"
    t.string   "create_user_id", :limit => 20
    t.string   "update_user_id", :limit => 20
    t.datetime "last_update"
  end

  add_index "vendor", ["name"], :name => "ix_vendor_name"

  create_table "vendor_affiliation", :primary_key => "affiliation_num", :force => true do |t|
    t.integer "vendor_id", :limit => nil, :null => false
  end

  create_table "vendor_commission", :primary_key => "vendor_commission_num", :force => true do |t|
    t.decimal  "vendor_id",                                         :null => false
    t.datetime "start_date",                                        :null => false
    t.datetime "end_date",                                          :null => false
    t.decimal  "commission_rate",                  :default => 0.0, :null => false
    t.decimal  "min_guarantee_rate",               :default => 0.0
    t.string   "user_id",            :limit => 20
    t.datetime "last_updated"
  end

  add_index "vendor_commission", ["commission_rate"], :name => "ix_vc_commission_rate"
  add_index "vendor_commission", ["end_date"], :name => "ix_vc_end_date"
  add_index "vendor_commission", ["last_updated"], :name => "ix_vc_last_updated"
  add_index "vendor_commission", ["min_guarantee_rate"], :name => "ix_min_guarantee_rate"
  add_index "vendor_commission", ["start_date"], :name => "ix_vc_start_date"
  add_index "vendor_commission", ["user_id"], :name => "ix_vc_userid"
  add_index "vendor_commission", ["vendor_id"], :name => "ix_vc_vendor_id"

end
