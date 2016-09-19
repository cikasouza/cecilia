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

ActiveRecord::Schema.define(version: 20160918144422) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "sexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "foto"
  end

  create_table "ordem_servicos", force: :cascade do |t|
    t.string   "numero_os"
    t.boolean  "orcamento"
    t.boolean  "pedido"
    t.date     "data_inicio"
    t.date     "data_conclusao"
    t.text     "descricao"
    t.float    "valor"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "veiculo_id"
    t.integer  "cliente_id"
  end

  add_index "ordem_servicos", ["cliente_id"], name: "index_ordem_servicos_on_cliente_id"
  add_index "ordem_servicos", ["veiculo_id"], name: "index_ordem_servicos_on_veiculo_id"

  create_table "veiculos", force: :cascade do |t|
    t.string   "placa"
    t.string   "marca"
    t.string   "modelo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cliente_id"
  end

  add_index "veiculos", ["cliente_id"], name: "index_veiculos_on_cliente_id"

end
