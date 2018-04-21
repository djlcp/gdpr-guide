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

ActiveRecord::Schema.define(version: 20180421155740) do

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gdprarticles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "jerseylaw_id"
    t.integer "chapter_id"
    t.string "chapter_romannum"
    t.string "chapter_title"
    t.integer "section_id"
    t.integer "section_num"
    t.string "section_title"
    t.integer "article_id"
    t.integer "article_num"
    t.string "article_title"
    t.text "article_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gdprrecitals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "jerseylaw_id"
    t.integer "gdprarticles_id"
    t.integer "recital_id"
    t.integer "recital_num"
    t.string "recital_title"
    t.text "recital_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guidancenotes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "gdprarticle_id"
    t.integer "gdprrecital_id"
    t.integer "jerseylaw_id"
    t.integer "category_id"
    t.string "title"
    t.string "link"
    t.date "publication_date"
    t.string "type"
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jerseylaws", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "category_id"
    t.integer "part_id"
    t.integer "part_num"
    t.string "part_title"
    t.integer "article_id"
    t.integer "article_num"
    t.string "article_title"
    t.text "article_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
