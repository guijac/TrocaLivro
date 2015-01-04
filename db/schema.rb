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

ActiveRecord::Schema.define(:version => 20130614015440) do

  create_table "livro_bancos", :force => true do |t|
    t.string   "isbn"
    t.string   "titulo"
    t.string   "autor"
    t.string   "editora"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "livro_usuarioarios", :force => true do |t|
    t.integer  "user_id"
    t.string   "isbn"
    t.string   "comentario"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trocas", :force => true do |t|
    t.integer  "usuarioSolicitante_id"
    t.integer  "livroSolicitante_id"
    t.integer  "usuarioSolicitado_id"
    t.integer  "livroSolicitado_id"
    t.string   "comentario"
    t.string   "status"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nome"
    t.string   "cidade"
    t.string   "estado"
    t.string   "endereco"
    t.string   "cep"
    t.string   "bairro"
    t.string   "telefoneFixo"
    t.string   "telefoneCelular"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "usuariolivros", :force => true do |t|
    t.integer  "user_id"
    t.integer  "livro_banco_id"
    t.string   "comentario"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "sexo"
    t.string   "email"
    t.string   "senha"
    t.string   "cidade"
    t.string   "estado"
    t.string   "endereco"
    t.string   "cep"
    t.string   "bairro"
    t.string   "telefoneFixo"
    t.string   "telefoneCelular"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

end
