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

ActiveRecord::Schema.define(version: 20191003025035) do

  create_table "orgs", primary_key: "org_id", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "orgname", limit: 45
    t.float "rate", limit: 24
  end

  create_table "shifts", primary_key: "shiftid", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "id"
    t.time "start"
    t.time "finish"
    t.date "shiftdate"
    t.integer "breaktime"
    t.float "hrsworked", limit: 24
    t.float "shiftcost", limit: 24
  end

  create_table "users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", limit: 45
    t.string "org_id", limit: 45
    t.string "email", limit: 45
    t.string "password_digest"
  end

end
