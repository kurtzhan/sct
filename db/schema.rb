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

ActiveRecord::Schema.define(version: 20180521033855) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "roles_mask",             limit: 4
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.integer  "ordinal",          limit: 4,          default: 1, null: false
    t.integer  "language_id",      limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "slug",             limit: 255
    t.text     "description",      limit: 4294967295
    t.string   "title",            limit: 255
    t.string   "meta_keywords",    limit: 255
    t.string   "meta_description", limit: 255
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", unique: true, using: :btree

  create_table "category_pictures", force: :cascade do |t|
    t.integer  "category_id", limit: 4,   null: false
    t.integer  "picture_id",  limit: 4,   null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image_type",  limit: 255
  end

  add_index "category_pictures", ["category_id", "picture_id"], name: "uniq_category_id_picture_id", unique: true, using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "filename",          limit: 255
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "features", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "slug",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "features", ["slug"], name: "index_features_on_slug", unique: true, using: :btree

  create_table "flash_pictures", force: :cascade do |t|
    t.integer  "picture_id", limit: 4,             null: false
    t.integer  "ordinal",    limit: 4, default: 1, null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",   limit: 4,   null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "languages", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "material_items", force: :cascade do |t|
    t.string   "name",             limit: 255,        null: false
    t.string   "slug",             limit: 255,        null: false
    t.integer  "material_id",      limit: 4,          null: false
    t.text     "description",      limit: 4294967295
    t.string   "title",            limit: 255
    t.string   "meta_keywords",    limit: 255
    t.string   "meta_description", limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "slug",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "company",    limit: 255
    t.string   "country",    limit: 255
    t.string   "address",    limit: 255
    t.string   "zip_code",   limit: 255
    t.string   "gender",     limit: 255
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255,   null: false
    t.string   "email_2",    limit: 255
    t.string   "telephone",  limit: 255
    t.string   "subject",    limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "name",         limit: 255,        null: false
    t.integer  "language_id",  limit: 4
    t.integer  "news_type_id", limit: 4,          null: false
    t.text     "description",  limit: 4294967295, null: false
    t.string   "slug",         limit: 255,        null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "news_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "product_attachment_files", force: :cascade do |t|
    t.integer  "product_id",         limit: 4, null: false
    t.integer  "attachment_file_id", limit: 4, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "product_attachment_files", ["product_id", "attachment_file_id"], name: "uniq_product_id_attachment_file_id", unique: true, using: :btree

  create_table "product_features", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.integer  "feature_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "product_features", ["product_id", "feature_id"], name: "uniq_product_id_feature_id", unique: true, using: :btree

  create_table "product_pictures", force: :cascade do |t|
    t.integer  "product_id", limit: 4, null: false
    t.integer  "picture_id", limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "product_pictures", ["product_id", "picture_id"], name: "uniq_product_id_picture_id", unique: true, using: :btree

  create_table "products", force: :cascade do |t|
    t.integer  "category_id",       limit: 4
    t.string   "name",              limit: 255
    t.integer  "ordinal",           limit: 4,          default: 1, null: false
    t.integer  "language_id",       limit: 4
    t.string   "youtube_url",       limit: 255
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.text     "description",       limit: 4294967295
    t.string   "slug",              limit: 255
    t.string   "title",             limit: 255
    t.string   "meta_keywords",     limit: 255
    t.string   "meta_description",  limit: 255
    t.text     "short_description", limit: 65535
  end

  add_index "products", ["slug"], name: "index_products_on_slug", unique: true, using: :btree

  create_table "simple_captcha_data", force: :cascade do |t|
    t.string   "key",        limit: 40
    t.string   "value",      limit: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_captcha_data", ["key"], name: "idx_key", using: :btree

  create_table "site_configs", force: :cascade do |t|
    t.string   "title",            limit: 255
    t.string   "meta_keywords",    limit: 255
    t.string   "meta_description", limit: 255
    t.integer  "language_id",      limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.text     "about_us",         limit: 4294967295
    t.text     "qc",               limit: 4294967295
  end

end
