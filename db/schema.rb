ActiveRecord::Schema.define(version: 20170719065554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachments", force: :cascade do |t|
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "attachable_type"
    t.integer  "attachable_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["attachable_type", "attachable_id"], name: "index_attachments_on_attachable_type_and_attachable_id", using: :btree
  end

  create_table "carts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "position"
    t.string   "phone"
    t.string   "city"
    t.string   "streat"
    t.string   "building"
    t.string   "email"
    t.string   "company_name"
    t.boolean  "visible",      default: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
