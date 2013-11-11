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

ActiveRecord::Schema.define(:version => 20130910023831) do

  create_table "clientes", :force => true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "cedula"
    t.string   "empresa"
    t.string   "nit"
    t.string   "cargo"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "celular"
    t.string   "fax"
    t.string   "email"
    t.integer  "municipio_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "clientes", ["municipio_id"], :name => "index_clientes_on_municipio_id"

  create_table "contactos", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.string   "celular"
    t.string   "email"
    t.integer  "año"
    t.integer  "mes"
    t.integer  "dia"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cotizaciones", :force => true do |t|
    t.integer  "servicio_id"
    t.integer  "detalle_id"
    t.integer  "precio"
    t.integer  "total"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "cotizaciones", ["detalle_id"], :name => "index_cotizaciones_on_detalle_id"
  add_index "cotizaciones", ["servicio_id"], :name => "index_cotizaciones_on_servicio_id"

  create_table "departamentos", :force => true do |t|
    t.string   "nombre"
    t.string   "sigla"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "detalles", :force => true do |t|
    t.string   "pieza"
    t.integer  "precio"
    t.integer  "servicio_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "detalles", ["servicio_id"], :name => "index_detalles_on_servicio_id"

  create_table "documentos", :force => true do |t|
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "precios_file_name"
    t.string   "precios_content_type"
    t.integer  "precios_file_size"
    t.datetime "precios_updated_at"
  end

  create_table "municipios", :force => true do |t|
    t.string   "nombre"
    t.string   "sigla"
    t.integer  "departamento_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "municipios", ["departamento_id"], :name => "index_municipios_on_departamento_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "servicios", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
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

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
