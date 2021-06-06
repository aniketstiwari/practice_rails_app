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

ActiveRecord::Schema.define(version: 2021_06_06_171831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.integer "patent_id"
    t.integer "total_price"
    t.integer "medicine_fee"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patent_id"], name: "index_bills_on_patent_id"
  end

  create_table "consumers", force: :cascade do |t|
    t.string "name"
    t.bigint "order_list_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_list_item_id"], name: "index_consumers_on_order_list_item_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "doctor_name"
    t.string "specialization"
    t.bigint "phone_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dormitories", force: :cascade do |t|
    t.integer "school_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_id"], name: "index_dormitories_on_school_id"
  end

  create_table "dormitory_admins", force: :cascade do |t|
    t.bigint "dormitory_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "phone"
    t.index ["dormitory_id"], name: "index_dormitory_admins_on_dormitory_id"
    t.index ["user_id"], name: "index_dormitory_admins_on_user_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_employees_on_name"
    t.index ["salary"], name: "index_employees_on_salary"
  end

  create_table "forms", force: :cascade do |t|
    t.integer "employee_id"
    t.string "form_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "price"
    t.index ["employee_id"], name: "index_forms_on_employee_id"
  end

  create_table "order_list_items", force: :cascade do |t|
    t.string "name"
    t.bigint "product_variant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_variant_id"], name: "index_order_list_items_on_product_variant_id"
  end

  create_table "patient_doctors", force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_patient_doctors_on_doctor_id"
    t.index ["patient_id"], name: "index_patient_doctors_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "patient_name"
    t.string "patient_problem"
    t.string "patient_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_variants", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_variants_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.bigint "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_products_on_store_id"
  end

  create_table "school_admins", force: :cascade do |t|
    t.bigint "school_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "phone"
    t.index ["school_id"], name: "index_school_admins_on_school_id"
    t.index ["user_id"], name: "index_school_admins_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "consumers", "order_list_items"
  add_foreign_key "dormitory_admins", "dormitories"
  add_foreign_key "dormitory_admins", "users"
  add_foreign_key "order_list_items", "product_variants"
  add_foreign_key "patient_doctors", "doctors"
  add_foreign_key "patient_doctors", "patients"
  add_foreign_key "product_variants", "products"
  add_foreign_key "products", "stores"
  add_foreign_key "school_admins", "schools"
  add_foreign_key "school_admins", "users"
end
