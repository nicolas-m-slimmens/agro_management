# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160806220012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "applied_phytosanitary_products", force: true do |t|
    t.string   "pest_disease"
    t.string   "effectiveness"
    t.float    "dose"
    t.float    "units_per_hectare"
    t.float    "price_per_unit"
    t.integer  "provider_id"
    t.integer  "registered_supply_id"
    t.integer  "phytosanitary_treatment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "applied_phytosanitary_products", ["provider_id"], name: "index_applied_phytosanitary_products_on_provider_id", using: :btree
  add_index "applied_phytosanitary_products", ["registered_supply_id"], name: "index_applied_phytosanitary_products_on_registered_supply_id", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "telephone_number"
    t.string   "address"
    t.string   "locality"
    t.string   "province"
    t.string   "email_address"
    t.text     "observations"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crops", force: true do |t|
    t.string   "name"
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fertilizations", force: true do |t|
    t.integer  "parcel_id"
    t.date     "campaing"
    t.integer  "registered_supply_id"
    t.integer  "provider_id"
    t.string   "type"
    t.date     "applied_at"
    t.float    "affected_area"
    t.float    "units_per_hectare"
    t.float    "price_per_unit"
    t.text     "observations"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fertilizations", ["parcel_id"], name: "index_fertilizations_on_parcel_id", using: :btree
  add_index "fertilizations", ["provider_id"], name: "index_fertilizations_on_provider_id", using: :btree
  add_index "fertilizations", ["registered_supply_id"], name: "index_fertilizations_on_registered_supply_id", using: :btree

  create_table "fields", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "locality"
    t.string   "province"
    t.string   "country"
    t.float    "area"
    t.boolean  "own"
    t.text     "observations"
    t.integer  "owner_contact"
    t.integer  "manager_contact"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "fields", ["user_id"], name: "index_fields_on_user_id", using: :btree

  create_table "labor_performeds", force: true do |t|
    t.integer  "parcel_id"
    t.date     "campaign"
    t.integer  "registered_labor_id"
    t.integer  "provider_id"
    t.float    "price"
    t.date     "done_at"
    t.text     "observations"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "labor_performeds", ["parcel_id"], name: "index_labor_performeds_on_parcel_id", using: :btree
  add_index "labor_performeds", ["provider_id"], name: "index_labor_performeds_on_provider_id", using: :btree
  add_index "labor_performeds", ["registered_labor_id"], name: "index_labor_performeds_on_registered_labor_id", using: :btree

  create_table "labor_providers", force: true do |t|
    t.integer  "registered_labor_id"
    t.integer  "provider_id"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "labor_providers", ["provider_id"], name: "index_labor_providers_on_provider_id", using: :btree
  add_index "labor_providers", ["registered_labor_id"], name: "index_labor_providers_on_registered_labor_id", using: :btree

  create_table "notifications", force: true do |t|
    t.string   "title"
    t.text     "message"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parcels", force: true do |t|
    t.string   "name"
    t.float    "area"
    t.integer  "field_id"
    t.integer  "crop_id"
    t.integer  "soil_survey_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parcels", ["crop_id"], name: "index_parcels_on_crop_id", using: :btree
  add_index "parcels", ["field_id"], name: "index_parcels_on_field_id", using: :btree
  add_index "parcels", ["soil_survey_id"], name: "index_parcels_on_soil_survey_id", using: :btree

  create_table "phytosanitary_treatments", force: true do |t|
    t.date     "applied_at"
    t.float    "affected_area"
    t.text     "observations"
    t.integer  "parcel_id"
    t.date     "campaign"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phytosanitary_treatments", ["parcel_id"], name: "index_phytosanitary_treatments_on_parcel_id", using: :btree

  create_table "productions", force: true do |t|
    t.string   "variety"
    t.string   "quality"
    t.float    "quantity"
    t.float    "area"
    t.boolean  "own_storage"
    t.integer  "parcel_id"
    t.date     "campaign"
    t.integer  "crop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "productions", ["crop_id"], name: "index_productions_on_crop_id", using: :btree
  add_index "productions", ["parcel_id"], name: "index_productions_on_parcel_id", using: :btree

  create_table "providers", force: true do |t|
    t.string   "name"
    t.string   "tax_identifier"
    t.text     "observations"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "providers", ["contact_id"], name: "index_providers_on_contact_id", using: :btree

  create_table "registered_labors", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.text     "observations"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registered_supplies", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.string   "unit"
    t.text     "observations"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.boolean  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "soil_surveys", force: true do |t|
    t.float    "organic_carbon"
    t.float    "organic_material"
    t.float    "total_nitrogen"
    t.float    "nitrate"
    t.float    "nitrate_nitrogens"
    t.float    "comparable_fosforo"
    t.float    "calcium"
    t.float    "magnesium"
    t.float    "ph"
    t.float    "carbon_nitrogen"
    t.float    "calcium_magnesium"
    t.float    "conductivity"
    t.float    "sulfur"
    t.float    "hardness_of_water"
    t.float    "water_ph"
    t.integer  "parcel_id"
    t.integer  "provider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "soil_surveys", ["parcel_id"], name: "index_soil_surveys_on_parcel_id", using: :btree
  add_index "soil_surveys", ["provider_id"], name: "index_soil_surveys_on_provider_id", using: :btree

  create_table "supply_providers", force: true do |t|
    t.integer  "provider_id"
    t.float    "price"
    t.integer  "registered_supply_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "supply_providers", ["provider_id"], name: "index_supply_providers_on_provider_id", using: :btree
  add_index "supply_providers", ["registered_supply_id"], name: "index_supply_providers_on_registered_supply_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
