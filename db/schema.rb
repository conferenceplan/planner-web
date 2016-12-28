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

ActiveRecord::Schema.define(version: 20161225185929) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "addressable_id",   limit: 4
    t.string   "addressable_type", limit: 255
    t.integer  "person_id",        limit: 4
    t.boolean  "isvalid"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "lock_version",     limit: 4,   default: 0
    t.integer  "venue_id",         limit: 4
  end

  add_index "addresses", ["addressable_id"], name: "addr_id_index", using: :btree
  add_index "addresses", ["addressable_type"], name: "addr_type_index", using: :btree
  add_index "addresses", ["person_id"], name: "addr_person_id_index", using: :btree

  create_table "answers", force: :cascade do |t|
    t.integer  "Survey_id",    limit: 4
    t.string   "question",     limit: 255
    t.text     "reply",        limit: 65535
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "lock_version", limit: 4,     default: 0
  end

  create_table "audits", force: :cascade do |t|
    t.integer  "auditable_id",    limit: 4
    t.string   "auditable_type",  limit: 255
    t.integer  "user_id",         limit: 4
    t.string   "user_type",       limit: 255
    t.string   "username",        limit: 255
    t.string   "action",          limit: 255
    t.text     "audited_changes", limit: 65535
    t.integer  "version",         limit: 4,     default: 0
    t.datetime "created_at"
    t.string   "comment",         limit: 255
    t.string   "remote_address",  limit: 255
    t.integer  "associated_id",   limit: 4
    t.string   "associated_type", limit: 255
    t.string   "request_uuid",    limit: 255
  end

  add_index "audits", ["associated_id", "associated_type"], name: "associated_index", using: :btree
  add_index "audits", ["auditable_id", "auditable_type"], name: "auditable_index", using: :btree
  add_index "audits", ["created_at"], name: "index_audits_on_created_at", using: :btree
  add_index "audits", ["request_uuid"], name: "index_audits_on_request_uuid", using: :btree
  add_index "audits", ["user_id", "user_type"], name: "user_index", using: :btree

  create_table "available_dates", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "person_id",    limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "lock_version", limit: 4, default: 0
  end

  create_table "bio_images", force: :cascade do |t|
    t.string   "bio_picture",  limit: 255
    t.integer  "person_id",    limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  create_table "captcha_configs", force: :cascade do |t|
    t.string   "captcha_pub_key",  limit: 255, default: ""
    t.string   "captcha_priv_key", limit: 255, default: ""
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "lock_version",     limit: 4,   default: 0
  end

  create_table "categories", force: :cascade do |t|
    t.integer  "category_name_id", limit: 4
    t.integer  "categorized_id",   limit: 4
    t.string   "categorized_type", limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "lock_version",     limit: 4,   default: 0
  end

  add_index "categories", ["categorized_id", "categorized_type"], name: "index_categories_on_categorized_id_and_categorized_type", using: :btree
  add_index "categories", ["categorized_id"], name: "index_categories_on_categorized_id", using: :btree
  add_index "categories", ["category_name_id", "categorized_type"], name: "index_categories_on_category_name_id_and_categorized_type", using: :btree
  add_index "categories", ["category_name_id"], name: "index_categories_on_category_name_id", using: :btree

  create_table "category_names", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  create_table "change_logs", force: :cascade do |t|
    t.string   "who",         limit: 255
    t.datetime "when"
    t.string   "description", limit: 255
    t.string   "type",        limit: 255
    t.string   "old_value",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "cloudinary_configs", force: :cascade do |t|
    t.string   "cloud_name",           limit: 255
    t.string   "api_key",              limit: 255
    t.string   "api_secret",           limit: 255
    t.boolean  "enhance_image_tag"
    t.boolean  "static_image_support"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "conference_logos", force: :cascade do |t|
    t.string   "image",        limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  create_table "conflict_exceptions", force: :cascade do |t|
    t.string   "conflict_type", limit: 255
    t.integer  "affected",      limit: 4
    t.integer  "src1",          limit: 4
    t.integer  "src2",          limit: 4
    t.integer  "idx",           limit: 8
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "lock_version",  limit: 4,   default: 0
  end

  create_table "content_images", force: :cascade do |t|
    t.string   "picture",      limit: 255
    t.string   "gallery",      limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  add_index "content_images", ["gallery"], name: "index_content_images_on_gallery", using: :btree

  create_table "datasources", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.boolean  "primary",                default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "default_bio_images", force: :cascade do |t|
    t.string   "image",        limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   limit: 4,     default: 0
    t.integer  "attempts",   limit: 4,     default: 0
    t.text     "handler",    limit: 65535
    t.text     "last_error", limit: 65535
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by",  limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "queue",      limit: 255
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "edited_bios", force: :cascade do |t|
    t.text     "bio",              limit: 65535
    t.integer  "person_id",        limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "lock_version",     limit: 4,     default: 0
    t.text     "website",          limit: 65535
    t.text     "twitterinfo",      limit: 65535
    t.text     "othersocialmedia", limit: 65535
    t.text     "photourl",         limit: 65535
    t.text     "facebook",         limit: 65535
    t.text     "linkedin",         limit: 65535
    t.text     "twitch",           limit: 65535
    t.text     "youtube",          limit: 65535
    t.text     "instagram",        limit: 65535
    t.text     "flickr",           limit: 65535
    t.text     "reddit",           limit: 65535
  end

  create_table "email_addresses", force: :cascade do |t|
    t.string   "email",        limit: 255, default: ""
    t.boolean  "isdefault"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "lock_version", limit: 4,   default: 0
    t.string   "label",        limit: 255
  end

  create_table "enumrecord", force: :cascade do |t|
    t.string  "type",     limit: 255
    t.string  "name",     limit: 255
    t.integer "position", limit: 4
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "details",           limit: 255
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "lock_version",      limit: 4,   default: 0
    t.integer  "equipment_type_id", limit: 4
    t.integer  "room_id",           limit: 4
  end

  create_table "equipment_assignments", force: :cascade do |t|
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "lock_version",      limit: 4, default: 0
    t.integer  "programme_item_id", limit: 4
    t.integer  "equipment_id",      limit: 4
  end

  create_table "equipment_needs", force: :cascade do |t|
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "programme_item_id", limit: 4
    t.integer  "equipment_type_id", limit: 4
    t.integer  "lock_version",      limit: 4, default: 0
    t.integer  "quantity",          limit: 4, default: 1
  end

  add_index "equipment_needs", ["programme_item_id"], name: "equip_item_id_index", using: :btree

  create_table "equipment_types", force: :cascade do |t|
    t.string   "description",  limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  create_table "excluded_items_survey_maps", force: :cascade do |t|
    t.integer  "programme_item_id", limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "lock_version",      limit: 4, default: 0
    t.integer  "survey_answer_id",  limit: 4
  end

  create_table "excluded_periods_survey_maps", force: :cascade do |t|
    t.integer  "period_id",        limit: 4
    t.string   "period_type",      limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "lock_version",     limit: 4,   default: 0
    t.integer  "survey_answer_id", limit: 4
  end

  create_table "exclusions", force: :cascade do |t|
    t.integer  "excludable_id",   limit: 4
    t.string   "excludable_type", limit: 255
    t.integer  "person_id",       limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "lock_version",    limit: 4,     default: 0
    t.text     "source",          limit: 65535
  end

  create_table "external_images", force: :cascade do |t|
    t.string   "picture",        limit: 255
    t.integer  "imageable_id",   limit: 4
    t.string   "imageable_type", limit: 255
    t.string   "use",            limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "lock_version",   limit: 4,   default: 0
  end

  create_table "features", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "lock_version", limit: 4,   default: 0
    t.boolean  "migrated",                 default: false
  end

  create_table "formats", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "position",     limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  create_table "import_mappings", force: :cascade do |t|
    t.integer  "first_name",          limit: 4, default: -1
    t.integer  "last_name",           limit: 4, default: -1
    t.integer  "suffix",              limit: 4, default: -1
    t.integer  "line1",               limit: 4, default: -1
    t.integer  "line2",               limit: 4, default: -1
    t.integer  "city",                limit: 4, default: -1
    t.integer  "state",               limit: 4, default: -1
    t.integer  "postcode",            limit: 4, default: -1
    t.integer  "country",             limit: 4, default: -1
    t.integer  "phone",               limit: 4, default: -1
    t.integer  "email",               limit: 4, default: -1
    t.integer  "registration_number", limit: 4, default: -1
    t.integer  "registration_type",   limit: 4, default: -1
    t.integer  "datasource_dbid",     limit: 4, default: -1
    t.integer  "pub_first_name",      limit: 4, default: -1
    t.integer  "pub_last_name",       limit: 4, default: -1
    t.integer  "pub_suffix",          limit: 4, default: -1
    t.integer  "datasource_id",       limit: 4
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "lock_version",        limit: 4, default: 0
    t.integer  "job_title",           limit: 4, default: -1
    t.integer  "company",             limit: 4, default: -1
    t.integer  "prefix",              limit: 4, default: -1
    t.integer  "pub_prefix",          limit: 4, default: -1
    t.integer  "bio",                 limit: 4, default: -1
    t.integer  "invite_status",       limit: 4, default: -1
    t.integer  "invite_category",     limit: 4, default: -1
    t.integer  "accept_status",       limit: 4, default: -1
  end

  create_table "invitation_categories", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "position",     limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  create_table "job_infos", force: :cascade do |t|
    t.datetime "last_run"
    t.string   "job_name",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "label_dimensions", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "manufacturer",       limit: 255
    t.string   "page_size",          limit: 255
    t.string   "unit",               limit: 255
    t.string   "orientation",        limit: 255
    t.integer  "across",             limit: 4
    t.integer  "down",               limit: 4
    t.float    "label_width",        limit: 24
    t.float    "label_height",       limit: 24
    t.float    "left_margin",        limit: 24
    t.float    "right_margin",       limit: 24
    t.float    "top_margin",         limit: 24
    t.float    "bottom_margin",      limit: 24
    t.float    "vertical_spacing",   limit: 24
    t.float    "horizontal_spacing", limit: 24
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "links", force: :cascade do |t|
    t.integer  "linkedto_id",   limit: 4
    t.string   "linkedto_type", limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "lock_version",  limit: 4,   default: 0
  end

  add_index "links", ["linkedto_id", "linkedto_type"], name: "index_links_on_linkedto_id_and_linkedto_type", using: :btree
  add_index "links", ["linkedto_id"], name: "index_links_on_linkedto_id", using: :btree

  create_table "mail_configs", force: :cascade do |t|
    t.string   "conference_name", limit: 255, default: ""
    t.string   "cc",              limit: 255, default: ""
    t.string   "from",            limit: 255, default: ""
    t.string   "domain",          limit: 255, default: ""
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "info",            limit: 255
    t.string   "test_email",      limit: 255
    t.string   "reply_to",        limit: 255
  end

  create_table "mail_histories", force: :cascade do |t|
    t.integer  "person_mailing_assignment_id", limit: 4
    t.integer  "email_status_id",              limit: 4
    t.datetime "date_sent"
    t.string   "email",                        limit: 255
    t.text     "content",                      limit: 65535
    t.boolean  "testrun",                                    default: false
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
    t.integer  "lock_version",                 limit: 4,     default: 0
    t.integer  "person_id",                    limit: 4
    t.integer  "mailing_id",                   limit: 4
    t.string   "subject",                      limit: 255
  end

  create_table "mail_templates", force: :cascade do |t|
    t.integer  "mail_use_id",                limit: 4
    t.string   "title",                      limit: 255,   default: ""
    t.string   "subject",                    limit: 255,   default: ""
    t.text     "content",                    limit: 65535
    t.integer  "survey_id",                  limit: 4
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.integer  "lock_version",               limit: 4,     default: 0
    t.integer  "transiton_invite_status_id", limit: 4
  end

  create_table "mailings", force: :cascade do |t|
    t.integer  "mailing_number",   limit: 4
    t.integer  "mail_template_id", limit: 4
    t.boolean  "scheduled"
    t.boolean  "testrun",                    default: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "lock_version",     limit: 4, default: 0
    t.integer  "last_person_idx",  limit: 4, default: -1
    t.boolean  "include_email",              default: true
    t.boolean  "cc_all",                     default: false
  end

  create_table "pending_import_people", force: :cascade do |t|
    t.string   "first_name",          limit: 255,   default: ""
    t.string   "last_name",           limit: 255,   default: ""
    t.string   "suffix",              limit: 255,   default: ""
    t.string   "line1",               limit: 255
    t.string   "line2",               limit: 255
    t.string   "line3",               limit: 255
    t.string   "city",                limit: 255
    t.string   "state",               limit: 255
    t.string   "postcode",            limit: 255
    t.string   "country",             limit: 255
    t.string   "phone",               limit: 255
    t.string   "email",               limit: 255,   default: ""
    t.string   "registration_number", limit: 255
    t.string   "registration_type",   limit: 255
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.integer  "lock_version",        limit: 4,     default: 0
    t.integer  "datasource_id",       limit: 4
    t.string   "datasource_dbid",     limit: 255
    t.integer  "pendingtype_id",      limit: 4
    t.text     "alt_email",           limit: 65535
    t.string   "pub_first_name",      limit: 255
    t.string   "pub_last_name",       limit: 255
    t.string   "pub_suffix",          limit: 255
    t.string   "company",             limit: 255
    t.string   "job_title",           limit: 255
    t.string   "prefix",              limit: 255,   default: ""
    t.string   "pub_prefix",          limit: 255,   default: ""
    t.text     "bio",                 limit: 65535
    t.string   "invite_status",       limit: 255
    t.string   "invite_category",     limit: 255
    t.string   "accept_status",       limit: 255
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name",             limit: 255,   default: ""
    t.string   "last_name",              limit: 255,   default: ""
    t.string   "suffix",                 limit: 255,   default: ""
    t.string   "language",               limit: 255,   default: ""
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.integer  "lock_version",           limit: 4,     default: 0
    t.integer  "invitestatus_id",        limit: 4
    t.integer  "invitation_category_id", limit: 4
    t.integer  "acceptance_status_id",   limit: 4
    t.integer  "mailing_number",         limit: 4
    t.text     "comments",               limit: 65535
    t.string   "company",                limit: 255,   default: ""
    t.string   "job_title",              limit: 255,   default: ""
    t.string   "prefix",                 limit: 255,   default: ""
  end

  create_table "peoplesources", force: :cascade do |t|
    t.integer  "person_id",       limit: 4
    t.integer  "datasource_id",   limit: 4
    t.string   "datasource_dbid", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "person_con_states", force: :cascade do |t|
    t.integer  "person_id",              limit: 4
    t.integer  "acceptance_status_id",   limit: 4
    t.integer  "invitestatus_id",        limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "lock_version",           limit: 4, default: 0
    t.integer  "invitation_category_id", limit: 4
  end

  add_index "person_con_states", ["person_id"], name: "index_person_con_states_on_person_id", using: :btree

  create_table "person_constraints", force: :cascade do |t|
    t.integer  "max_items_per_day", limit: 4
    t.integer  "max_items_per_con", limit: 4
    t.integer  "person_id",         limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "lock_version",      limit: 4, default: 0
  end

  create_table "person_mailing_assignments", force: :cascade do |t|
    t.integer  "person_id",    limit: 4
    t.integer  "mailing_id",   limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "lock_version", limit: 4, default: 0
  end

  add_index "person_mailing_assignments", ["mailing_id"], name: "index_person_mailing_assignments_on_mailing_id", using: :btree
  add_index "person_mailing_assignments", ["person_id"], name: "index_person_mailing_assignments_on_person_id", using: :btree

  create_table "phone_numbers", force: :cascade do |t|
    t.string   "number",        limit: 255, default: ""
    t.integer  "phone_type_id", limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "lock_version",  limit: 4,   default: 0
  end

  create_table "planner_konopas_konopas_configs", force: :cascade do |t|
    t.string   "base_url",          limit: 255
    t.string   "manifest_url",      limit: 255
    t.string   "manifest_user",     limit: 255
    t.string   "manifest_password", limit: 255
    t.string   "calendar_url",      limit: 255
    t.string   "calendar_user",     limit: 255
    t.string   "calendar_password", limit: 255
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "lock_version",      limit: 4,   default: 0
  end

  create_table "postal_addresses", force: :cascade do |t|
    t.string   "line1",        limit: 255
    t.string   "line2",        limit: 255
    t.string   "line3",        limit: 255
    t.string   "city",         limit: 255
    t.string   "state",        limit: 255
    t.string   "postcode",     limit: 255
    t.string   "country",      limit: 255
    t.string   "phone",        limit: 255
    t.boolean  "isdefault"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
    t.float    "latitude",     limit: 24
    t.float    "longitude",    limit: 24
    t.string   "state_code",   limit: 255
    t.string   "country_code", limit: 255
  end

  create_table "programme_item_assignments", force: :cascade do |t|
    t.integer  "person_id",         limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "lock_version",      limit: 4,   default: 0
    t.integer  "role_id",           limit: 4
    t.integer  "programme_item_id", limit: 4
    t.integer  "sort_order",        limit: 4,   default: 0
    t.string   "description",       limit: 255
  end

  add_index "programme_item_assignments", ["person_id"], name: "pia_person_index", using: :btree
  add_index "programme_item_assignments", ["programme_item_id"], name: "pis_prog_item_id_index", using: :btree
  add_index "programme_item_assignments", ["role_id"], name: "pia_role_id_index", using: :btree

  create_table "programme_items", force: :cascade do |t|
    t.string   "short_title",          limit: 255
    t.string   "title",                limit: 255
    t.text     "precis",               limit: 65535
    t.integer  "duration",             limit: 4
    t.integer  "minimum_people",       limit: 4
    t.integer  "maximum_people",       limit: 4
    t.text     "item_notes",           limit: 65535
    t.boolean  "print"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.integer  "lock_version",         limit: 4,     default: 0
    t.integer  "format_id",            limit: 4
    t.integer  "setup_type_id",        limit: 4
    t.integer  "pub_reference_number", limit: 4
    t.integer  "mobile_card_size",     limit: 4,     default: 1
    t.integer  "audience_size",        limit: 4
    t.text     "participant_notes",    limit: 65535
    t.text     "short_precis",         limit: 65535
    t.integer  "parent_id",            limit: 4
    t.boolean  "is_break",                           default: false
    t.integer  "start_offset",         limit: 4,     default: 0
  end

  create_table "pseudonyms", force: :cascade do |t|
    t.string   "first_name",   limit: 255, default: ""
    t.string   "last_name",    limit: 255, default: ""
    t.string   "suffix",       limit: 255, default: ""
    t.integer  "person_id",    limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "lock_version", limit: 4,   default: 0
    t.string   "prefix",       limit: 255, default: ""
  end

  add_index "pseudonyms", ["person_id"], name: "pseudonym_person_index", using: :btree

  create_table "publication_dates", force: :cascade do |t|
    t.datetime "timestamp"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "newitems",      limit: 4, default: 0
    t.integer  "modifieditems", limit: 4, default: 0
    t.integer  "removeditems",  limit: 4, default: 0
  end

  create_table "publication_statuses", force: :cascade do |t|
    t.string   "status",       limit: 255
    t.datetime "submit_time"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  create_table "publications", force: :cascade do |t|
    t.integer  "published_id",     limit: 4
    t.string   "published_type",   limit: 255
    t.integer  "original_id",      limit: 4
    t.string   "original_type",    limit: 255
    t.integer  "user_id",          limit: 4
    t.datetime "publication_date"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "lock_version",     limit: 4,   default: 0
  end

  add_index "publications", ["original_id", "original_type"], name: "pub_original_id_type_index", using: :btree
  add_index "publications", ["published_id", "published_type"], name: "pub_pub_id_type_index", using: :btree

  create_table "published_programme_item_assignments", force: :cascade do |t|
    t.integer  "published_programme_item_id", limit: 4
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.integer  "lock_version",                limit: 4,   default: 0
    t.integer  "role_id",                     limit: 4
    t.integer  "person_id",                   limit: 4
    t.string   "person_name",                 limit: 255
    t.integer  "sort_order",                  limit: 4,   default: 0
    t.string   "description",                 limit: 255
  end

  add_index "published_programme_item_assignments", ["person_id"], name: "pub_progitem_assignment_person_index", using: :btree
  add_index "published_programme_item_assignments", ["published_programme_item_id"], name: "pub_progitem_assignment_item_index", using: :btree

  create_table "published_programme_items", force: :cascade do |t|
    t.string   "short_title",          limit: 255
    t.string   "title",                limit: 255
    t.text     "precis",               limit: 65535
    t.integer  "duration",             limit: 4
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.integer  "lock_version",         limit: 4,     default: 0
    t.integer  "format_id",            limit: 4
    t.integer  "pub_reference_number", limit: 4
    t.integer  "mobile_card_size",     limit: 4,     default: 1
    t.integer  "audience_size",        limit: 4
    t.text     "participant_notes",    limit: 65535
    t.integer  "parent_id",            limit: 4
    t.boolean  "is_break",                           default: false
    t.integer  "start_offset",         limit: 4,     default: 0
  end

  create_table "published_room_item_assignments", force: :cascade do |t|
    t.integer  "published_room_id",           limit: 4
    t.integer  "published_programme_item_id", limit: 4
    t.integer  "published_time_slot_id",      limit: 4
    t.integer  "day",                         limit: 4, default: -1
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.integer  "lock_version",                limit: 4, default: 0
  end

  add_index "published_room_item_assignments", ["published_programme_item_id"], name: "pub_room_assign_item_index", using: :btree
  add_index "published_room_item_assignments", ["published_room_id"], name: "pub_room_assign_room_index", using: :btree
  add_index "published_room_item_assignments", ["published_time_slot_id"], name: "pub_room_assign_time_index", using: :btree

  create_table "published_rooms", force: :cascade do |t|
    t.integer  "published_venue_id", limit: 4
    t.text     "name",               limit: 65535
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "lock_version",       limit: 4,     default: 0
    t.integer  "sort_order",         limit: 4,     default: 0
  end

  create_table "published_time_slots", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "lock_version", limit: 4, default: 0
  end

  create_table "published_venues", force: :cascade do |t|
    t.text     "name",         limit: 65535
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "lock_version", limit: 4,     default: 0
    t.integer  "sort_order",   limit: 4,     default: 0
  end

  create_table "registration_details", force: :cascade do |t|
    t.integer  "person_id",           limit: 4
    t.string   "registration_number", limit: 255
    t.string   "registration_type",   limit: 255
    t.boolean  "registered"
    t.boolean  "ghost"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "lock_version",        limit: 4,   default: 0
    t.boolean  "can_share",                       default: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "relatable_id",      limit: 4
    t.string   "relatable_type",    limit: 255
    t.integer  "person_id",         limit: 4
    t.string   "relationship_type", limit: 255
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "lock_version",      limit: 4,   default: 0
  end

  create_table "role_assignments", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "role_id",      limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "lock_version", limit: 4, default: 0
  end

  create_table "roles", force: :cascade do |t|
    t.string "title", limit: 255
  end

  create_table "room_item_assignments", force: :cascade do |t|
    t.integer  "room_id",           limit: 4
    t.integer  "programme_item_id", limit: 4
    t.integer  "time_slot_id",      limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "lock_version",      limit: 4, default: 0
    t.integer  "day",               limit: 4, default: -1
  end

  add_index "room_item_assignments", ["day"], name: "ria_day_index", using: :btree
  add_index "room_item_assignments", ["programme_item_id"], name: "ria_prog_item_id_index", using: :btree
  add_index "room_item_assignments", ["room_id"], name: "ria_room_id_index", using: :btree
  add_index "room_item_assignments", ["time_slot_id"], name: "ria_time_slot_id_index", using: :btree

  create_table "room_setups", force: :cascade do |t|
    t.integer  "room_id",       limit: 4
    t.integer  "setup_type_id", limit: 4
    t.integer  "capacity",      limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "lock_version",  limit: 4, default: 0
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "venue_id",     limit: 4
    t.text     "name",         limit: 65535
    t.integer  "sort_order",   limit: 4,        default: 0
    t.integer  "integer",      limit: 4,        default: 0
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "lock_version", limit: 4,        default: 0
    t.string   "purpose",      limit: 255
    t.text     "comment",      limit: 16777215
    t.integer  "setup_id",     limit: 4
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", limit: 255,   null: false
    t.text     "data",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "setup_types", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "description",  limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  create_table "site_configs", force: :cascade do |t|
    t.string   "captcha_pub_key",       limit: 255, default: ""
    t.string   "captcha_priv_key",      limit: 255, default: ""
    t.datetime "created_at",                                                               null: false
    t.datetime "updated_at",                                                               null: false
    t.integer  "lock_version",          limit: 4,   default: 0
    t.string   "name",                  limit: 255, default: ""
    t.string   "time_zone",             limit: 255, default: "Eastern Time (US & Canada)"
    t.datetime "start_date"
    t.integer  "number_of_days",        limit: 4,   default: 1
    t.string   "print_time_format",     limit: 255, default: "24"
    t.datetime "public_start_date"
    t.integer  "public_number_of_days", limit: 4,   default: 1
  end

  create_table "survey_answers", force: :cascade do |t|
    t.text     "answer",             limit: 65535
    t.boolean  "default",                          default: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "lock_version",       limit: 4,     default: 0
    t.integer  "survey_question_id", limit: 4
    t.integer  "sort_order",         limit: 4
    t.text     "help",               limit: 65535
    t.integer  "answertype_id",      limit: 4
    t.text     "start_time",         limit: 65535
    t.integer  "start_day",          limit: 4
    t.integer  "duration",           limit: 4
  end

  create_table "survey_assignments", force: :cascade do |t|
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "lock_version",       limit: 4, default: 0
    t.integer  "person_id",          limit: 4
    t.integer  "survey_response_id", limit: 4
  end

  create_table "survey_formats", force: :cascade do |t|
    t.text     "help",              limit: 65535
    t.string   "style",             limit: 255,   default: ""
    t.string   "description_style", limit: 255,   default: ""
    t.string   "answer_style",      limit: 255,   default: ""
    t.string   "question_style",    limit: 255,   default: ""
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "lock_version",      limit: 4,     default: 0
    t.integer  "formatable_id",     limit: 4
    t.string   "formatable_type",   limit: 255
    t.text     "help1",             limit: 65535
    t.text     "help2",             limit: 65535
    t.text     "help3",             limit: 65535
    t.text     "help4",             limit: 65535
    t.text     "help5",             limit: 65535
    t.text     "help6",             limit: 65535
  end

  create_table "survey_groups", force: :cascade do |t|
    t.string   "code",         limit: 255,   default: ""
    t.string   "name",         limit: 255,   default: ""
    t.string   "altname",      limit: 255,   default: ""
    t.text     "description",  limit: 65535
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "lock_version", limit: 4,     default: 0
    t.integer  "survey_id",    limit: 4
    t.integer  "sort_order",   limit: 4
  end

  add_index "survey_groups", ["survey_id"], name: "survey_grp_survey_idx", using: :btree

  create_table "survey_histories", force: :cascade do |t|
    t.integer  "survey_respondent_detail_id", limit: 4
    t.datetime "filled_at"
    t.integer  "survey_id",                   limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "survey_queries", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "operation",    limit: 255
    t.integer  "survey_id",    limit: 4
    t.boolean  "shared"
    t.integer  "user_id",      limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "lock_version", limit: 4,   default: 0
    t.boolean  "date_order",               default: false
    t.boolean  "show_country",             default: false
  end

  create_table "survey_query_predicates", force: :cascade do |t|
    t.integer  "survey_question_id", limit: 4
    t.string   "operation",          limit: 255
    t.text     "value",              limit: 65535
    t.integer  "survey_query_id",    limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "lock_version",       limit: 4,     default: 0
  end

  create_table "survey_questions", force: :cascade do |t|
    t.string   "code",               limit: 255,   default: ""
    t.string   "title",              limit: 255,   default: ""
    t.text     "question",           limit: 65535
    t.string   "tags_label",         limit: 255,   default: ""
    t.string   "question_type",      limit: 255,   default: "textfield"
    t.integer  "additional",         limit: 4,     default: 0
    t.string   "validation",         limit: 255,   default: ""
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.integer  "lock_version",       limit: 4,     default: 0
    t.integer  "survey_group_id",    limit: 4
    t.boolean  "mandatory",                        default: false
    t.integer  "text_size",          limit: 4
    t.integer  "sort_order",         limit: 4
    t.string   "answer_type",        limit: 255,   default: "String"
    t.string   "answer1_type",       limit: 255,   default: "String"
    t.text     "question1",          limit: 65535
    t.string   "answer2_type",       limit: 255,   default: "String"
    t.text     "question2",          limit: 65535
    t.string   "answer3_type",       limit: 255,   default: "String"
    t.text     "question3",          limit: 65535
    t.string   "answer4_type",       limit: 255,   default: "String"
    t.text     "question4",          limit: 65535
    t.string   "answer5_type",       limit: 255,   default: "String"
    t.text     "question5",          limit: 65535
    t.string   "answer6_type",       limit: 255,   default: "String"
    t.text     "question6",          limit: 65535
    t.boolean  "isbio"
    t.integer  "questionmapping_id", limit: 4
    t.boolean  "horizontal",                       default: false
    t.boolean  "private",                          default: false
    t.string   "regex",              limit: 255
  end

  create_table "survey_respondent_details", force: :cascade do |t|
    t.string   "first_name",           limit: 255, default: ""
    t.string   "last_name",            limit: 255, default: ""
    t.string   "suffix",               limit: 255, default: ""
    t.string   "email",                limit: 255, default: ""
    t.integer  "survey_respondent_id", limit: 4
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.integer  "lock_version",         limit: 4,   default: 0
    t.string   "prefix",               limit: 255, default: ""
    t.string   "company",              limit: 255
    t.string   "job_title",            limit: 255
  end

  add_index "survey_respondent_details", ["survey_respondent_id"], name: "survey_resp_idx", using: :btree

  create_table "survey_respondents", force: :cascade do |t|
    t.string   "key",                 limit: 255
    t.string   "single_access_token", limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.boolean  "attending",                       default: true
    t.integer  "person_id",           limit: 4
    t.boolean  "submitted_survey",                default: false
    t.integer  "email_status_id",     limit: 4
  end

  add_index "survey_respondents", ["person_id"], name: "survey_resp_person_idx", using: :btree

  create_table "survey_responses", force: :cascade do |t|
    t.text     "response",                    limit: 65535
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.integer  "lock_version",                limit: 4,     default: 0
    t.integer  "survey_id",                   limit: 4
    t.integer  "survey_question_id",          limit: 4
    t.integer  "survey_respondent_detail_id", limit: 4
    t.text     "response1",                   limit: 65535
    t.text     "response2",                   limit: 65535
    t.text     "response3",                   limit: 65535
    t.text     "response4",                   limit: 65535
    t.text     "response5",                   limit: 65535
    t.text     "response6",                   limit: 65535
    t.boolean  "isbio"
    t.string   "photo",                       limit: 255
    t.integer  "survey_answer_id",            limit: 4
  end

  add_index "survey_responses", ["survey_id"], name: "survey_idx", using: :btree
  add_index "survey_responses", ["survey_question_id"], name: "survey_resp_question_idx", using: :btree
  add_index "survey_responses", ["survey_respondent_detail_id"], name: "survey_resp_detail_idx", using: :btree

  create_table "survey_sub_questions", force: :cascade do |t|
    t.boolean  "first",                        default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "lock_version",       limit: 4, default: 0
    t.integer  "survey_question_id", limit: 4
    t.integer  "survey_answer_id",   limit: 4
  end

  create_table "surveys", force: :cascade do |t|
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "lock_version",      limit: 4,     default: 0
    t.string   "name",              limit: 255
    t.text     "welcome",           limit: 65535
    t.text     "thank_you",         limit: 65535
    t.string   "alias",             limit: 255,   default: ""
    t.string   "submit_string",     limit: 255,   default: "Save"
    t.string   "header_image",      limit: 255,   default: ""
    t.boolean  "use_captcha",                     default: false
    t.boolean  "public"
    t.boolean  "authenticate"
    t.integer  "accept_status_id",  limit: 4
    t.integer  "decline_status_id", limit: 4
    t.text     "declined_msg",      limit: 65535
    t.text     "authenticate_msg",  limit: 65535
    t.boolean  "anonymous",                       default: false
  end

  add_index "surveys", ["alias"], name: "survey_alias_idx", using: :btree

  create_table "tag_contexts", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "lock_version", limit: 4,   default: 0
    t.boolean  "publish",                  default: true
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",        limit: 4
    t.integer  "taggable_id",   limit: 4
    t.integer  "tagger_id",     limit: 4
    t.string   "tagger_type",   limit: 255
    t.string   "taggable_type", limit: 255
    t.string   "context",       limit: 255
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id"], name: "index_taggings_on_taggable_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name",           limit: 255
    t.integer "taggings_count", limit: 4,   default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "theme_names", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  create_table "themes", force: :cascade do |t|
    t.integer  "theme_name_id", limit: 4
    t.integer  "themed_id",     limit: 4
    t.string   "themed_type",   limit: 255
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "lock_version",  limit: 4,   default: 0
  end

  add_index "themes", ["theme_name_id", "themed_type"], name: "index_themes_on_theme_name_id_and_themed_type", using: :btree
  add_index "themes", ["theme_name_id"], name: "index_themes_on_theme_name_id", using: :btree
  add_index "themes", ["themed_id", "themed_type"], name: "index_themes_on_themed_id_and_themed_type", using: :btree
  add_index "themes", ["themed_id"], name: "index_themes_on_themed_id", using: :btree

  create_table "time_slots", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.string   "type",         limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
  end

  add_index "time_slots", ["end"], name: "time_slot_end_index", using: :btree
  add_index "time_slots", ["start"], name: "time_slot_start_index", using: :btree

  create_table "translations", force: :cascade do |t|
    t.string   "locale",         limit: 255
    t.string   "key",            limit: 255
    t.text     "value",          limit: 65535
    t.text     "interpolations", limit: 65535
    t.boolean  "is_proc",                      default: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.boolean  "stale",                        default: false
  end

  add_index "translations", ["key"], name: "key", using: :btree
  add_index "translations", ["locale", "key"], name: "locale_key", using: :btree

  create_table "user_interface_settings", force: :cascade do |t|
    t.string   "key",        limit: 255, null: false
    t.string   "_value",     limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "login",                  limit: 255,              null: false
    t.string   "encrypted_password",     limit: 255,              null: false
    t.string   "password_salt",          limit: 255
    t.string   "single_access_token",    limit: 255
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.integer  "failed_attempts",        limit: 4,   default: 0,  null: false
    t.datetime "last_request_at"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "person_id",              limit: 4
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "remember_token",         limit: 255
    t.datetime "remember_created_at"
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["login"], name: "index_users_on_login", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "lock_version", limit: 4,   default: 0
    t.integer  "sort_order",   limit: 4,   default: 0
  end

end
