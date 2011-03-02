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

ActiveRecord::Schema.define(:version => 20110227225948) do

  create_table "blocks", :force => true do |t|
    t.integer  "num_boletos"
    t.integer  "folio"
    t.integer  "sorteo_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blocks", ["sorteo_id"], :name => "sorteo_id"

  create_table "boletos", :force => true do |t|
    t.integer  "folio"
    t.string   "nombre"
    t.string   "rfc"
    t.string   "dir"
    t.string   "cp"
    t.string   "ciudad"
    t.string   "telefono"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "block_id",   :null => false
  end

  add_index "boletos", ["block_id"], :name => "block_id"

  create_table "premios", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.decimal  "precio",      :precision => 8, :scale => 2
    t.integer  "sorteo_id",                                 :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "premios", ["sorteo_id"], :name => "sorteo_id"

  create_table "sorteos", :force => true do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.integer  "num_boletos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre_usuario"
    t.integer  "roles_mask"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

  add_foreign_key "blocks", ["sorteo_id"], "sorteos", ["id"], :name => "blocks_ibfk_1"
  add_foreign_key "blocks", ["sorteo_id"], "sorteos", ["id"], :name => "blocks_ibfk_2"

  add_foreign_key "boletos", ["block_id"], "blocks", ["id"], :name => "boletos_ibfk_1"
  add_foreign_key "boletos", ["block_id"], "blocks", ["id"], :name => "boletos_ibfk_2"

  add_foreign_key "premios", ["sorteo_id"], "sorteos", ["id"], :name => "premios_ibfk_1"
  add_foreign_key "premios", ["sorteo_id"], "sorteos", ["id"], :name => "premios_ibfk_2"

end
