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

ActiveRecord::Schema.define(:version => 20130703035714) do

  create_table "clientes", :force => true do |t|
    t.string   "nombre_empresa"
    t.string   "nombre_solicita_servicio"
    t.string   "telefono_empresa"
    t.string   "telefono_contacto"
    t.string   "correo_empresa"
    t.string   "correo_contacto"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cotizaciones", :force => true do |t|
    t.integer  "escalado_talla_id"
    t.integer  "precio_escala"
    t.integer  "patronaje_basico_id"
    t.integer  "precio_patro"
    t.integer  "total"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "cotizaciones", ["escalado_talla_id"], :name => "index_cotizaciones_on_escalado_talla_id"
  add_index "cotizaciones", ["patronaje_basico_id"], :name => "index_cotizaciones_on_patronaje_basico_id"

  create_table "escalados_tallas", :force => true do |t|
    t.string   "pieza"
    t.integer  "precio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patronajes_basicos", :force => true do |t|
    t.string   "pieza"
    t.integer  "precio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "username",                     :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"

end
