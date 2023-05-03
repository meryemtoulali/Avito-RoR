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

ActiveRecord::Schema.define(version: 2023_05_03_112424) do

  create_table "annonces", force: :cascade do |t|
    t.string "titre"
    t.string "ville"
    t.string "date"
    t.string "images"
    t.float "prix"
    t.string "type"
    t.string "secteur"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "adresse"
    t.integer "utilisateur_id"
    t.index ["utilisateur_id"], name: "index_annonces_on_utilisateur_id"
  end

  create_table "utilisateurs", force: :cascade do |t|
    t.string "nom"
    t.string "email"
    t.string "ville"
    t.string "telephone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "annonces", "utilisateurs"
end
