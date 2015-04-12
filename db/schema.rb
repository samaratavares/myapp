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

ActiveRecord::Schema.define(version: 20150409215349) do

  create_table "fichas", force: :cascade do |t|
    t.integer  "paciente_id"
    t.integer  "medico_id"
    t.string   "altura"
    t.string   "imc"
    t.string   "classificacao"
    t.string   "riscos"
    t.string   "circunferencia"
    t.string   "pressao"
    t.string   "glicose"
    t.string   "batimentos"
    t.string   "dieta"
    t.string   "medicamentos"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "fichas", ["medico_id"], name: "index_fichas_on_medico_id"
  add_index "fichas", ["paciente_id"], name: "index_fichas_on_paciente_id"

  create_table "medicos", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "email"
    t.string   "crm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "email"
    t.string   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
