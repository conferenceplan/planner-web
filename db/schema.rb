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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20160928132304) do

  create_table "addresses", :force => true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.integer  "person_id"
    t.boolean  "isvalid"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "lock_version",     :default => 0
    t.integer  "venue_id"
  end

  add_index "addresses", ["addressable_id"], :name => "addr_id_index"
  add_index "addresses", ["addressable_type"], :name => "addr_type_index"
  add_index "addresses", ["person_id"], :name => "addr_person_id_index"

  create_table "answers", :force => true do |t|
    t.integer  "Survey_id"
    t.string   "question"
    t.text     "reply"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "audits", :force => true do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes"
    t.integer  "version",         :default => 0
    t.datetime "created_at"
    t.string   "comment"
    t.string   "remote_address"
    t.integer  "associated_id"
    t.string   "associated_type"
  end

  add_index "audits", ["associated_id", "associated_type"], :name => "associated_index"
  add_index "audits", ["auditable_id", "auditable_type"], :name => "auditable_index"
  add_index "audits", ["created_at"], :name => "index_audits_on_created_at"
  add_index "audits", ["user_id", "user_type"], :name => "user_index"

  create_table "available_dates", :force => true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "person_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "bio_images", :force => true do |t|
    t.string   "bio_picture"
    t.integer  "person_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "captcha_configs", :force => true do |t|
    t.string   "captcha_pub_key",  :default => ""
    t.string   "captcha_priv_key", :default => ""
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "lock_version",     :default => 0
  end

  create_table "categories", :force => true do |t|
    t.integer  "category_name_id"
    t.integer  "categorized_id"
    t.string   "categorized_type"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "lock_version",     :default => 0
  end

  add_index "categories", ["categorized_id", "categorized_type"], :name => "index_categories_on_categorized_id_and_categorized_type"
  add_index "categories", ["categorized_id"], :name => "index_categories_on_categorized_id"
  add_index "categories", ["category_name_id", "categorized_type"], :name => "index_categories_on_category_name_id_and_categorized_type"
  add_index "categories", ["category_name_id"], :name => "index_categories_on_category_name_id"

  create_table "category_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "change_logs", :force => true do |t|
    t.string   "who"
    t.datetime "when"
    t.string   "description"
    t.string   "type"
    t.string   "old_value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "cloudinary_configs", :force => true do |t|
    t.string   "cloud_name"
    t.string   "api_key"
    t.string   "api_secret"
    t.boolean  "enhance_image_tag"
    t.boolean  "static_image_support"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "conference_logos", :force => true do |t|
    t.string   "image"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "conflict_exceptions", :force => true do |t|
    t.string   "conflict_type"
    t.integer  "affected"
    t.integer  "src1"
    t.integer  "src2"
    t.integer  "idx",           :limit => 8
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "lock_version",               :default => 0
  end

  create_table "content_images", :force => true do |t|
    t.string   "picture"
    t.string   "gallery"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  add_index "content_images", ["gallery"], :name => "index_content_images_on_gallery"

  create_table "datasources", :force => true do |t|
    t.string   "name"
    t.boolean  "primary",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "default_bio_images", :force => true do |t|
    t.string   "image"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "queue"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "edited_bios", :force => true do |t|
    t.text     "bio"
    t.integer  "person_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "lock_version",     :default => 0
    t.text     "website"
    t.text     "twitterinfo"
    t.text     "othersocialmedia"
    t.text     "photourl"
    t.text     "facebook"
    t.text     "linkedin"
  end

  create_table "email_addresses", :force => true do |t|
    t.string   "email",        :default => ""
    t.boolean  "isdefault"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "lock_version", :default => 0
    t.string   "label"
  end

  create_table "enumrecord", :force => true do |t|
    t.string  "type"
    t.string  "name"
    t.integer "position"
  end

  create_table "equipment", :force => true do |t|
    t.string   "details"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "lock_version",      :default => 0
    t.integer  "equipment_type_id"
    t.integer  "room_id"
  end

  create_table "equipment_assignments", :force => true do |t|
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "lock_version",      :default => 0
    t.integer  "programme_item_id"
    t.integer  "equipment_id"
  end

  create_table "equipment_needs", :force => true do |t|
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "programme_item_id"
    t.integer  "equipment_type_id"
    t.integer  "lock_version",      :default => 0
    t.integer  "quantity",          :default => 1
  end

  add_index "equipment_needs", ["programme_item_id"], :name => "equip_item_id_index"

  create_table "equipment_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "excluded_items_survey_maps", :force => true do |t|
    t.integer  "programme_item_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "lock_version",      :default => 0
    t.integer  "survey_answer_id"
  end

  create_table "excluded_periods_survey_maps", :force => true do |t|
    t.integer  "period_id"
    t.string   "period_type"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "lock_version",     :default => 0
    t.integer  "survey_answer_id"
  end

  create_table "exclusions", :force => true do |t|
    t.integer  "excludable_id"
    t.string   "excludable_type"
    t.integer  "person_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "lock_version",    :default => 0
    t.text     "source"
  end

  create_table "external_images", :force => true do |t|
    t.string   "picture"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "use"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "lock_version",   :default => 0
  end

  create_table "features", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "lock_version", :default => 0
    t.boolean  "migrated",     :default => false
  end

  create_table "formats", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "import_mappings", :force => true do |t|
    t.integer  "first_name",          :default => -1
    t.integer  "last_name",           :default => -1
    t.integer  "suffix",              :default => -1
    t.integer  "line1",               :default => -1
    t.integer  "line2",               :default => -1
    t.integer  "city",                :default => -1
    t.integer  "state",               :default => -1
    t.integer  "postcode",            :default => -1
    t.integer  "country",             :default => -1
    t.integer  "phone",               :default => -1
    t.integer  "email",               :default => -1
    t.integer  "registration_number", :default => -1
    t.integer  "registration_type",   :default => -1
    t.integer  "datasource_dbid",     :default => -1
    t.integer  "pub_first_name",      :default => -1
    t.integer  "pub_last_name",       :default => -1
    t.integer  "pub_suffix",          :default => -1
    t.integer  "datasource_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "lock_version",        :default => 0
    t.integer  "job_title",           :default => -1
    t.integer  "company",             :default => -1
    t.integer  "prefix",              :default => -1
    t.integer  "pub_prefix",          :default => -1
    t.integer  "bio",                 :default => -1
    t.integer  "invite_status",       :default => -1
    t.integer  "invite_category",     :default => -1
    t.integer  "accept_status",       :default => -1
  end

  create_table "invitation_categories", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "job_infos", :force => true do |t|
    t.datetime "last_run"
    t.string   "job_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "label_dimensions", :force => true do |t|
    t.string   "name"
    t.string   "manufacturer"
    t.string   "page_size"
    t.string   "unit"
    t.string   "orientation"
    t.integer  "across"
    t.integer  "down"
    t.float    "label_width"
    t.float    "label_height"
    t.float    "left_margin"
    t.float    "right_margin"
    t.float    "top_margin"
    t.float    "bottom_margin"
    t.float    "vertical_spacing"
    t.float    "horizontal_spacing"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "links", :force => true do |t|
    t.integer  "linkedto_id"
    t.string   "linkedto_type"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "lock_version",  :default => 0
  end

  add_index "links", ["linkedto_id", "linkedto_type"], :name => "index_links_on_linkedto_id_and_linkedto_type"
  add_index "links", ["linkedto_id"], :name => "index_links_on_linkedto_id"

  create_table "mail_configs", :force => true do |t|
    t.string   "conference_name", :default => ""
    t.string   "cc",              :default => ""
    t.string   "from",            :default => ""
    t.string   "domain",          :default => ""
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "info"
    t.string   "test_email"
    t.string   "reply_to"
  end

  create_table "mail_histories", :force => true do |t|
    t.integer  "person_mailing_assignment_id"
    t.integer  "email_status_id"
    t.datetime "date_sent"
    t.string   "email"
    t.text     "content"
    t.boolean  "testrun",                      :default => false
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.integer  "lock_version",                 :default => 0
    t.integer  "person_id"
    t.integer  "mailing_id"
    t.string   "subject"
  end

  create_table "mail_templates", :force => true do |t|
    t.integer  "mail_use_id"
    t.string   "title",                      :default => ""
    t.string   "subject",                    :default => ""
    t.text     "content"
    t.integer  "survey_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "lock_version",               :default => 0
    t.integer  "transiton_invite_status_id"
  end

  create_table "mailings", :force => true do |t|
    t.integer  "mailing_number"
    t.integer  "mail_template_id"
    t.boolean  "scheduled"
    t.boolean  "testrun",          :default => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "lock_version",     :default => 0
    t.integer  "last_person_idx",  :default => -1
    t.boolean  "include_email",    :default => true
    t.boolean  "cc_all",           :default => false
  end

  create_table "pending_import_people", :force => true do |t|
    t.string   "first_name",          :default => ""
    t.string   "last_name",           :default => ""
    t.string   "suffix",              :default => ""
    t.string   "line1"
    t.string   "line2"
    t.string   "line3"
    t.string   "city"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.string   "phone"
    t.string   "email",               :default => ""
    t.string   "registration_number"
    t.string   "registration_type"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "lock_version",        :default => 0
    t.integer  "datasource_id"
    t.string   "datasource_dbid"
    t.integer  "pendingtype_id"
    t.text     "alt_email"
    t.string   "pub_first_name"
    t.string   "pub_last_name"
    t.string   "pub_suffix"
    t.string   "company"
    t.string   "job_title"
    t.string   "prefix",              :default => ""
    t.string   "pub_prefix",          :default => ""
    t.text     "bio"
    t.string   "invite_status"
    t.string   "invite_category"
    t.string   "accept_status"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name",             :default => ""
    t.string   "last_name",              :default => ""
    t.string   "suffix",                 :default => ""
    t.string   "language",               :default => ""
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "lock_version",           :default => 0
    t.integer  "invitestatus_id"
    t.integer  "invitation_category_id"
    t.integer  "acceptance_status_id"
    t.integer  "mailing_number"
    t.text     "comments"
    t.string   "company",                :default => ""
    t.string   "job_title",              :default => ""
    t.string   "prefix",                 :default => ""
  end

  create_table "peoplesources", :force => true do |t|
    t.integer  "person_id"
    t.integer  "datasource_id"
    t.string   "datasource_dbid"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "person_con_states", :force => true do |t|
    t.integer  "person_id"
    t.integer  "acceptance_status_id"
    t.integer  "invitestatus_id"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "lock_version",           :default => 0
    t.integer  "invitation_category_id"
  end

  add_index "person_con_states", ["person_id"], :name => "index_person_con_states_on_person_id"

  create_table "person_constraints", :force => true do |t|
    t.integer  "max_items_per_day"
    t.integer  "max_items_per_con"
    t.integer  "person_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "lock_version",      :default => 0
  end

  create_table "person_mailing_assignments", :force => true do |t|
    t.integer  "person_id"
    t.integer  "mailing_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  add_index "person_mailing_assignments", ["mailing_id"], :name => "index_person_mailing_assignments_on_mailing_id"
  add_index "person_mailing_assignments", ["person_id"], :name => "index_person_mailing_assignments_on_person_id"

  create_table "phone_numbers", :force => true do |t|
    t.string   "number",        :default => ""
    t.integer  "phone_type_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "lock_version",  :default => 0
  end

  create_table "planner_konopas_konopas_configs", :force => true do |t|
    t.string   "base_url"
    t.string   "manifest_url"
    t.string   "manifest_user"
    t.string   "manifest_password"
    t.string   "calendar_url"
    t.string   "calendar_user"
    t.string   "calendar_password"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "lock_version",      :default => 0
  end

  create_table "postal_addresses", :force => true do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "line3"
    t.string   "city"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.string   "phone"
    t.boolean  "isdefault"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
    t.float    "latitude"
    t.float    "longitude"
    t.string   "state_code"
    t.string   "country_code"
  end

  create_table "programme_item_assignments", :force => true do |t|
    t.integer  "person_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "lock_version",      :default => 0
    t.integer  "role_id"
    t.integer  "programme_item_id"
    t.integer  "sort_order",        :default => 0
    t.string   "description"
  end

  add_index "programme_item_assignments", ["person_id"], :name => "pia_person_index"
  add_index "programme_item_assignments", ["programme_item_id"], :name => "pis_prog_item_id_index"
  add_index "programme_item_assignments", ["role_id"], :name => "pia_role_id_index"

  create_table "programme_items", :force => true do |t|
    t.string   "short_title"
    t.string   "title"
    t.text     "precis"
    t.integer  "duration"
    t.integer  "minimum_people"
    t.integer  "maximum_people"
    t.text     "item_notes"
    t.boolean  "print"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.integer  "lock_version",         :default => 0
    t.integer  "format_id"
    t.integer  "setup_type_id"
    t.integer  "pub_reference_number"
    t.integer  "mobile_card_size",     :default => 1
    t.integer  "audience_size"
    t.text     "participant_notes"
    t.text     "short_precis"
    t.integer  "parent_id"
    t.boolean  "is_break",             :default => false
    t.integer  "start_offset",         :default => 0
  end

  create_table "pseudonyms", :force => true do |t|
    t.string   "first_name",   :default => ""
    t.string   "last_name",    :default => ""
    t.string   "suffix",       :default => ""
    t.integer  "person_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "lock_version", :default => 0
    t.string   "prefix",       :default => ""
  end

  add_index "pseudonyms", ["person_id"], :name => "pseudonym_person_index"

  create_table "publication_dates", :force => true do |t|
    t.datetime "timestamp"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "newitems",      :default => 0
    t.integer  "modifieditems", :default => 0
    t.integer  "removeditems",  :default => 0
  end

  create_table "publication_statuses", :force => true do |t|
    t.string   "status"
    t.datetime "submit_time"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "publications", :force => true do |t|
    t.integer  "published_id"
    t.string   "published_type"
    t.integer  "original_id"
    t.string   "original_type"
    t.integer  "user_id"
    t.datetime "publication_date"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "lock_version",     :default => 0
  end

  add_index "publications", ["original_id", "original_type"], :name => "pub_original_id_type_index"
  add_index "publications", ["published_id", "published_type"], :name => "pub_pub_id_type_index"

  create_table "published_programme_item_assignments", :force => true do |t|
    t.integer  "published_programme_item_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "lock_version",                :default => 0
    t.integer  "role_id"
    t.integer  "person_id"
    t.string   "person_name"
    t.integer  "sort_order",                  :default => 0
    t.string   "description"
  end

  add_index "published_programme_item_assignments", ["person_id"], :name => "pub_progitem_assignment_person_index"
  add_index "published_programme_item_assignments", ["published_programme_item_id"], :name => "pub_progitem_assignment_item_index"

  create_table "published_programme_items", :force => true do |t|
    t.string   "short_title"
    t.string   "title"
    t.text     "precis"
    t.integer  "duration"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.integer  "lock_version",         :default => 0
    t.integer  "format_id"
    t.integer  "pub_reference_number"
    t.integer  "mobile_card_size",     :default => 1
    t.integer  "audience_size"
    t.text     "participant_notes"
    t.integer  "parent_id"
    t.boolean  "is_break",             :default => false
    t.integer  "start_offset",         :default => 0
  end

  create_table "published_room_item_assignments", :force => true do |t|
    t.integer  "published_room_id"
    t.integer  "published_programme_item_id"
    t.integer  "published_time_slot_id"
    t.integer  "day",                         :default => -1
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.integer  "lock_version",                :default => 0
  end

  add_index "published_room_item_assignments", ["published_programme_item_id"], :name => "pub_room_assign_item_index"
  add_index "published_room_item_assignments", ["published_room_id"], :name => "pub_room_assign_room_index"
  add_index "published_room_item_assignments", ["published_time_slot_id"], :name => "pub_room_assign_time_index"

  create_table "published_rooms", :force => true do |t|
    t.integer  "published_venue_id"
    t.text     "name"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "lock_version",       :default => 0
    t.integer  "sort_order",         :default => 0
  end

  create_table "published_time_slots", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "published_venues", :force => true do |t|
    t.text     "name"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
    t.integer  "sort_order",   :default => 0
  end

  create_table "registration_details", :force => true do |t|
    t.integer  "person_id"
    t.string   "registration_number"
    t.string   "registration_type"
    t.boolean  "registered"
    t.boolean  "ghost"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "lock_version",        :default => 0
    t.boolean  "can_share",           :default => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "relatable_id"
    t.string   "relatable_type"
    t.integer  "person_id"
    t.string   "relationship_type"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "lock_version",      :default => 0
  end

  create_table "role_assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "roles", :force => true do |t|
    t.string "title"
  end

  create_table "room_item_assignments", :force => true do |t|
    t.integer  "room_id"
    t.integer  "programme_item_id"
    t.integer  "time_slot_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "lock_version",      :default => 0
    t.integer  "day",               :default => -1
  end

  add_index "room_item_assignments", ["day"], :name => "ria_day_index"
  add_index "room_item_assignments", ["programme_item_id"], :name => "ria_prog_item_id_index"
  add_index "room_item_assignments", ["room_id"], :name => "ria_room_id_index"
  add_index "room_item_assignments", ["time_slot_id"], :name => "ria_time_slot_id_index"

  create_table "room_setups", :force => true do |t|
    t.integer  "room_id"
    t.integer  "setup_type_id"
    t.integer  "capacity"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "lock_version",  :default => 0
  end

  create_table "rooms", :force => true do |t|
    t.integer  "venue_id"
    t.text     "name"
    t.integer  "sort_order",   :default => 0
    t.integer  "integer",      :default => 0
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
    t.string   "purpose"
    t.string   "comment"
    t.integer  "setup_id"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "setup_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "site_configs", :force => true do |t|
    t.string   "captcha_pub_key",       :default => ""
    t.string   "captcha_priv_key",      :default => ""
    t.datetime "created_at",                                                      :null => false
    t.datetime "updated_at",                                                      :null => false
    t.integer  "lock_version",          :default => 0
    t.string   "name",                  :default => ""
    t.string   "time_zone",             :default => "Eastern Time (US & Canada)"
    t.datetime "start_date"
    t.integer  "number_of_days",        :default => 1
    t.string   "print_time_format",     :default => "24"
    t.datetime "public_start_date"
    t.integer  "public_number_of_days", :default => 1
  end

  create_table "survey_answers", :force => true do |t|
    t.text     "answer"
    t.boolean  "default",            :default => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "lock_version",       :default => 0
    t.integer  "survey_question_id"
    t.integer  "sort_order"
    t.text     "help"
    t.integer  "answertype_id"
    t.text     "start_time"
    t.integer  "start_day"
    t.integer  "duration"
  end

  create_table "survey_assignments", :force => true do |t|
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "lock_version",       :default => 0
    t.integer  "person_id"
    t.integer  "survey_response_id"
  end

  create_table "survey_formats", :force => true do |t|
    t.text     "help"
    t.string   "style",             :default => ""
    t.string   "description_style", :default => ""
    t.string   "answer_style",      :default => ""
    t.string   "question_style",    :default => ""
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "lock_version",      :default => 0
    t.integer  "formatable_id"
    t.string   "formatable_type"
    t.text     "help1"
    t.text     "help2"
    t.text     "help3"
    t.text     "help4"
    t.text     "help5"
    t.text     "help6"
  end

  create_table "survey_groups", :force => true do |t|
    t.string   "code",         :default => ""
    t.string   "name",         :default => ""
    t.string   "altname",      :default => ""
    t.text     "description"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "lock_version", :default => 0
    t.integer  "survey_id"
    t.integer  "sort_order"
  end

  add_index "survey_groups", ["survey_id"], :name => "survey_grp_survey_idx"

  create_table "survey_histories", :force => true do |t|
    t.integer  "survey_respondent_detail_id"
    t.datetime "filled_at"
    t.integer  "survey_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "survey_queries", :force => true do |t|
    t.string   "name"
    t.string   "operation"
    t.integer  "survey_id"
    t.boolean  "shared"
    t.integer  "user_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "lock_version", :default => 0
    t.boolean  "date_order",   :default => false
    t.boolean  "show_country", :default => false
  end

  create_table "survey_query_predicates", :force => true do |t|
    t.integer  "survey_question_id"
    t.string   "operation"
    t.text     "value"
    t.integer  "survey_query_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "lock_version",       :default => 0
  end

  create_table "survey_questions", :force => true do |t|
    t.string   "code",               :default => ""
    t.string   "title",              :default => ""
    t.text     "question"
    t.string   "tags_label",         :default => ""
    t.string   "question_type",      :default => "textfield"
    t.integer  "additional",         :default => 0
    t.string   "validation",         :default => ""
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.integer  "lock_version",       :default => 0
    t.integer  "survey_group_id"
    t.boolean  "mandatory",          :default => false
    t.integer  "text_size"
    t.integer  "sort_order"
    t.string   "answer_type",        :default => "String"
    t.string   "answer1_type",       :default => "String"
    t.text     "question1"
    t.string   "answer2_type",       :default => "String"
    t.text     "question2"
    t.string   "answer3_type",       :default => "String"
    t.text     "question3"
    t.string   "answer4_type",       :default => "String"
    t.text     "question4"
    t.string   "answer5_type",       :default => "String"
    t.text     "question5"
    t.string   "answer6_type",       :default => "String"
    t.text     "question6"
    t.boolean  "isbio"
    t.integer  "questionmapping_id"
    t.boolean  "horizontal",         :default => false
    t.boolean  "private",            :default => false
    t.string   "regex"
  end

  create_table "survey_respondent_details", :force => true do |t|
    t.string   "first_name",           :default => ""
    t.string   "last_name",            :default => ""
    t.string   "suffix",               :default => ""
    t.string   "email",                :default => ""
    t.integer  "survey_respondent_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.integer  "lock_version",         :default => 0
    t.string   "prefix",               :default => ""
    t.string   "company"
    t.string   "job_title"
  end

  add_index "survey_respondent_details", ["survey_respondent_id"], :name => "survey_resp_idx"

  create_table "survey_respondents", :force => true do |t|
    t.string   "key"
    t.string   "single_access_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "attending",           :default => true
    t.integer  "person_id"
    t.boolean  "submitted_survey",    :default => false
    t.integer  "email_status_id"
  end

  add_index "survey_respondents", ["person_id"], :name => "survey_resp_person_idx"

  create_table "survey_responses", :force => true do |t|
    t.text     "response"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "lock_version",                :default => 0
    t.integer  "survey_id"
    t.integer  "survey_question_id"
    t.integer  "survey_respondent_detail_id"
    t.text     "response1"
    t.text     "response2"
    t.text     "response3"
    t.text     "response4"
    t.text     "response5"
    t.text     "response6"
    t.boolean  "isbio"
    t.string   "photo"
    t.integer  "survey_answer_id"
  end

  add_index "survey_responses", ["survey_id"], :name => "survey_idx"
  add_index "survey_responses", ["survey_question_id"], :name => "survey_resp_question_idx"
  add_index "survey_responses", ["survey_respondent_detail_id"], :name => "survey_resp_detail_idx"

  create_table "survey_sub_questions", :force => true do |t|
    t.boolean  "first",              :default => false
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "lock_version",       :default => 0
    t.integer  "survey_question_id"
    t.integer  "survey_answer_id"
  end

  create_table "surveys", :force => true do |t|
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "lock_version",      :default => 0
    t.string   "name"
    t.text     "welcome"
    t.text     "thank_you"
    t.string   "alias",             :default => ""
    t.string   "submit_string",     :default => "Save"
    t.string   "header_image",      :default => ""
    t.boolean  "use_captcha",       :default => false
    t.boolean  "public"
    t.boolean  "authenticate"
    t.integer  "accept_status_id"
    t.integer  "decline_status_id"
    t.text     "declined_msg"
    t.text     "authenticate_msg"
    t.boolean  "anonymous",         :default => false
  end

  add_index "surveys", ["alias"], :name => "survey_alias_idx"

  create_table "tag_contexts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "lock_version", :default => 0
    t.boolean  "publish",      :default => true
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "taggable_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], :name => "taggings_idx", :unique => true
  add_index "taggings", ["taggable_id"], :name => "index_taggings_on_taggable_id"

  create_table "tags", :force => true do |t|
    t.string  "name"
    t.integer "taggings_count", :default => 0
  end

  add_index "tags", ["name"], :name => "index_tags_on_name", :unique => true

  create_table "theme_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  create_table "themes", :force => true do |t|
    t.integer  "theme_name_id"
    t.integer  "themed_id"
    t.string   "themed_type"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "lock_version",  :default => 0
  end

  add_index "themes", ["theme_name_id", "themed_type"], :name => "index_themes_on_theme_name_id_and_themed_type"
  add_index "themes", ["theme_name_id"], :name => "index_themes_on_theme_name_id"
  add_index "themes", ["themed_id", "themed_type"], :name => "index_themes_on_themed_id_and_themed_type"
  add_index "themes", ["themed_id"], :name => "index_themes_on_themed_id"

  create_table "time_slots", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.string   "type"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
  end

  add_index "time_slots", ["end"], :name => "time_slot_end_index"
  add_index "time_slots", ["start"], :name => "time_slot_start_index"

  create_table "translations", :force => true do |t|
    t.string   "locale"
    t.string   "key"
    t.text     "value"
    t.text     "interpolations"
    t.boolean  "is_proc",        :default => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "user_interface_settings", :force => true do |t|
    t.string   "key",        :null => false
    t.string   "_value",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "login",                                  :null => false
    t.string   "encrypted_password",                     :null => false
    t.string   "password_salt"
    t.string   "single_access_token"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.integer  "failed_attempts",        :default => 0,  :null => false
    t.datetime "last_request_at"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "person_id"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string   "email",                  :default => "", :null => false
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["login"], :name => "index_users_on_login", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "lock_version", :default => 0
    t.integer  "sort_order",   :default => 0
  end

end
