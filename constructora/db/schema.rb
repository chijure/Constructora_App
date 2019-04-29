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

ActiveRecord::Schema.define(version: 2019_04_28_231853) do

  create_table "apartment_bookings", force: :cascade do |t|
    t.integer "quotation_id"
    t.integer "client_id"
    t.integer "bank_id"
    t.date "BookingDate"
    t.float "BookPrice"
    t.string "VoucherNumber"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bank_id"], name: "index_apartment_bookings_on_bank_id"
    t.index ["client_id"], name: "index_apartment_bookings_on_client_id"
    t.index ["quotation_id"], name: "index_apartment_bookings_on_quotation_id"
  end

  create_table "apartment_types", force: :cascade do |t|
    t.string "Name"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "request_quotation_id"
    t.datetime "AppointmentDate"
    t.boolean "IsAttended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_quotation_id"], name: "index_appointments_on_request_quotation_id"
  end

  create_table "banks", force: :cascade do |t|
    t.string "Name"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.integer "state_id"
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer "city_id"
    t.string "IdentityNumber"
    t.string "Name"
    t.string "LastName"
    t.string "Address"
    t.string "Mail"
    t.string "Phone"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_clients_on_city_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "Name"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_ap_type_prices", force: :cascade do |t|
    t.integer "project_apartment_type_id"
    t.date "RegisterDate"
    t.integer "ValidFor"
    t.float "PercentageDiscount"
    t.integer "Floor"
    t.float "Price"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_apartment_type_id"], name: "index_project_ap_type_prices_on_project_apartment_type_id"
  end

  create_table "project_apartment_types", force: :cascade do |t|
    t.integer "project_id"
    t.integer "apartment_type_id"
    t.float "Area"
    t.integer "Floor"
    t.integer "Quantity"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_type_id"], name: "index_project_apartment_types_on_apartment_type_id"
    t.index ["project_id"], name: "index_project_apartment_types_on_project_id"
  end

  create_table "project_apartments", force: :cascade do |t|
    t.integer "project_id"
    t.integer "project_apartment_type_id"
    t.string "Number"
    t.string "Description"
    t.string "Picture"
    t.integer "Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_apartment_type_id"], name: "index_project_apartments_on_project_apartment_type_id"
    t.index ["project_id"], name: "index_project_apartments_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "city_id"
    t.string "Name"
    t.float "Price"
    t.date "StartDate"
    t.date "EndDate"
    t.string "Address"
    t.string "Description"
    t.integer "Floors"
    t.integer "ApartmentsQuantity"
    t.integer "AvailableApartments"
    t.integer "ParkingsQuantity"
    t.integer "AvailableParkings"
    t.integer "Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Picture"
    t.index ["city_id"], name: "index_projects_on_city_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.integer "request_quotation_id"
    t.integer "client_id"
    t.date "QuotationDate"
    t.float "Price"
    t.integer "ValidFor"
    t.integer "Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_quotations_on_client_id"
    t.index ["request_quotation_id"], name: "index_quotations_on_request_quotation_id"
  end

  create_table "request_quotations", force: :cascade do |t|
    t.integer "project_id"
    t.integer "user_id"
    t.string "IdentityNumber"
    t.string "Name"
    t.string "LastName"
    t.string "Mail"
    t.string "Phone"
    t.date "RequestDate"
    t.integer "Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_request_quotations_on_project_id"
    t.index ["user_id"], name: "index_request_quotations_on_user_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "project_apartment_id"
    t.integer "apartment_booking_id"
    t.integer "bank_id"
    t.date "SaleDate"
    t.integer "PaymentType"
    t.float "CashAmount"
    t.float "FinancedAmount"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_booking_id"], name: "index_sales_on_apartment_booking_id"
    t.index ["bank_id"], name: "index_sales_on_bank_id"
    t.index ["project_apartment_id"], name: "index_sales_on_project_apartment_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "profile_id"
    t.integer "city_id"
    t.string "IdentityNumber"
    t.string "Name"
    t.string "LastName"
    t.string "Address"
    t.string "email"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Phone"
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["profile_id"], name: "index_users_on_profile_id"
  end

end
