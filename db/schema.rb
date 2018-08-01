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

ActiveRecord::Schema.define(version: 2018_07_30_001300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "descripcion"
    t.string "lugar"
    t.integer "fase"
  end

  create_table "activity_groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "activity_id"
    t.bigint "group_id"
    t.index ["activity_id"], name: "index_activity_groups_on_activity_id"
    t.index ["group_id"], name: "index_activity_groups_on_group_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "careers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.text "descripcion"
    t.bigint "faculty_id"
    t.index ["faculty_id"], name: "index_careers_on_faculty_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.text "descripcion"
  end

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.bigint "area_id"
    t.bigint "university_id"
    t.index ["area_id"], name: "index_groups_on_area_id"
    t.index ["university_id"], name: "index_groups_on_university_id"
  end

  create_table "headquarters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "direccion"
    t.string "telefono"
    t.bigint "university_id"
    t.index ["university_id"], name: "index_headquarters_on_university_id"
  end

  create_table "ideas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.text "descripcion"
    t.bigint "area_id"
    t.index ["area_id"], name: "index_ideas_on_area_id"
  end

  create_table "universities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.text "mision"
    t.text "vision"
    t.text "web"
  end

  create_table "university_careers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "university_id"
    t.bigint "career_id"
    t.index ["career_id"], name: "index_university_careers_on_career_id"
    t.index ["university_id"], name: "index_university_careers_on_university_id"
  end

  create_table "user_groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "group_id"
    t.bigint "user_id"
    t.index ["group_id"], name: "index_user_groups_on_group_id"
    t.index ["user_id"], name: "index_user_groups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "contrasena"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "usertype_id"
    t.index ["usertype_id"], name: "index_users_on_usertype_id"
  end

  create_table "usertypes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
