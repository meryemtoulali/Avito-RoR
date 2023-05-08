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

ActiveRecord::Schema.define(version: 2023_05_08_103118) do

  create_table "annonces", force: :cascade do |t|
    t.string "titre"
    t.string "ville"
    t.float "prix"
    t.string "annonce_type"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "adresse"
    t.text "image_data"
    t.integer "category_id"
    t.integer "utilisateur_id"
    t.integer "sub_category_id"
    t.index ["sub_category_id"], name: "index_annonces_on_sub_category_id"
    t.index ["utilisateur_id"], name: "index_annonces_on_utilisateur_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "commandes", force: :cascade do |t|
    t.string "nom"
    t.string "email"
    t.string "telephone"
    t.string "adresse"
    t.string "methode_paiement"
    t.float "prix"
    t.integer "utilisateur_id", null: false
    t.integer "annonce_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["annonce_id"], name: "index_commandes_on_annonce_id"
    t.index ["utilisateur_id"], name: "index_commandes_on_utilisateur_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "nom"
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "utilisateurs", force: :cascade do |t|
    t.string "nom"
    t.string "email"
    t.string "ville"
    t.string "telephone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

  add_foreign_key "annonces", "sub_categories"
  add_foreign_key "annonces", "utilisateurs"
  add_foreign_key "commandes", "annonces"
  add_foreign_key "commandes", "utilisateurs"
  add_foreign_key "sub_categories", "categories"
end
