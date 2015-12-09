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

ActiveRecord::Schema.define(version: 20151209144032) do

  create_table "avaliacaos", force: :cascade do |t|
    t.float    "alimentacao"
    t.float    "atendimento"
    t.float    "ambiente"
    t.integer  "comercio_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "avaliacaos", ["comercio_id"], name: "index_avaliacaos_on_comercio_id"

  create_table "cadastro_comercios", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "endereco"
    t.string   "telefone"
    t.float    "avaliacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cadastro_facebooks", force: :cascade do |t|
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cadastros", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.date     "dataNascimento"
    t.string   "senha"
    t.string   "confirmeSenha"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "comercios", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "tipo"
    t.string   "tefefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facebooks", force: :cascade do |t|
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "DataNascimento"
    t.string   "senha"
    t.string   "ConfirmeSenha"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
