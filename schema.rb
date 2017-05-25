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

ActiveRecord::Schema.define(version: 20170508162009) do

  create_table "gpas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "target_gpa_id"
    t.string   "subject"
    t.integer  "credit_hour"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["target_gpa_id"], name: "index_gpas_on_target_gpa_id", using: :btree
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "no_matric"
    t.string   "stud_name"
    t.string   "course_code"
    t.string   "tel_no"
    t.float    "gpa",         limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "password"
  end

  create_table "target_gpas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "students_id"
    t.float    "target_gpa",  limit: 24
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["students_id"], name: "index_target_gpas_on_students_id", using: :btree
  end

  create_table "tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "students_id"
    t.string   "task_details"
    t.string   "task_title"
    t.date     "date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["students_id"], name: "index_tasks_on_students_id", using: :btree
  end

  create_table "timetables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "students_id"
    t.string   "timetable_details"
    t.string   "timetable_title"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["students_id"], name: "index_timetables_on_students_id", using: :btree
  end

  create_table "timetables_details", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "timetables_id"
    t.string   "day"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "tdetails_description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["timetables_id"], name: "index_timetables_details_on_timetables_id", using: :btree
  end

  add_foreign_key "gpas", "target_gpas"
  add_foreign_key "target_gpas", "students", column: "students_id"
  add_foreign_key "tasks", "students", column: "students_id"
  add_foreign_key "timetables", "students", column: "students_id"
  add_foreign_key "timetables_details", "timetables", column: "timetables_id"
end
