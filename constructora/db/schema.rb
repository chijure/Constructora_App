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

ActiveRecord::Schema.define(version: 2019_04_22_051705) do

  create_table "apartment_bookings", force: :cascade do |t|
    t.string "IdApartmentBooking"
    t.string "IdQuotation"
    t.string "IdClient"
    t.string "IdBank"
    t.date "BookingDate"
    t.float "BookPrice"
    t.string "VoucherNumber"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apartment_type_prices", force: :cascade do |t|
    t.string "IdApartmentTypePrice"
    t.string "IdApartmentType"
    t.datetime "RegisterDate"
    t.integer "ValidFor"
    t.float "PercentajeDiscount"
    t.integer "Floor"
    t.float "FinalPrice"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apartment_types", force: :cascade do |t|
    t.string "IdApartmentType"
    t.string "IdProject"
    t.string "Name"
    t.integer "Quantity"
    t.integer "Available"
    t.integer "Sold"
    t.float "BasePrice"
    t.float "Area"
    t.integer "Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.string "IdAppointment"
    t.string "IdRequestQuotation"
    t.datetime "AppointmentDate"
    t.boolean "IsAttended"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banks", force: :cascade do |t|
    t.string "IdBank"
    t.string "Name"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "IdCity"
    t.string "IdState"
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "IdClient"
    t.string "IdCity"
    t.string "IdentityNumber"
    t.string "Name"
    t.string "LastName"
    t.string "Address"
    t.string "Mail"
    t.string "Phone"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "IdProfile"
    t.string "Name"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "IdProject"
    t.string "IdCity"
    t.string "Name"
    t.float "Price"
    t.date "StartDate"
    t.date "EndDate"
    t.string "Address"
    t.string "Description"
    t.integer "Floors"
    t.integer "ApartmentsQuantity"
    t.integer "ParkingsQuantity"
    t.integer "AvailableParkings"
    t.integer "Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotations", force: :cascade do |t|
    t.string "IdQuotation"
    t.string "IdRequestQuotation"
    t.date "QuotationDate"
    t.float "Price"
    t.integer "ValidFor"
    t.integer "Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_quotations", force: :cascade do |t|
    t.string "IdRequestQuotation"
    t.string "IdProject"
    t.string "IdUser"
    t.string "IdentityNumber"
    t.string "Name"
    t.string "LastName"
    t.string "Mail"
    t.string "Phone"
    t.date "RequestDate"
    t.integer "Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.string "IdSale"
    t.string "IdApartmentType"
    t.string "IdApartmentBooking"
    t.string "IdBank"
    t.date "SaleDate"
    t.integer "PaymentType"
    t.float "CashAmount"
    t.float "FinancedAmount"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "IdState"
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "IdUser"
    t.string "IdProfile"
    t.string "IdCity"
    t.string "IdentityNumber"
    t.string "Name"
    t.string "LastName"
    t.string "Address"
    t.string "Mail"
    t.string "Phone"
    t.boolean "IsActive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
