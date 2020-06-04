# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_25_215355) do

  create_table "camaras", force: :cascade do |t|
    t.string "tipo"
    t.string "tamanoPantalla"
    t.string "resolucion"
    t.integer "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producto_id"], name: "index_camaras_on_producto_id"
  end

  create_table "celulars", force: :cascade do |t|
    t.string "pulgadas"
    t.integer "computo_id", null: false
    t.integer "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["computo_id"], name: "index_celulars_on_computo_id"
    t.index ["producto_id"], name: "index_celulars_on_producto_id"
  end

  create_table "computadors", force: :cascade do |t|
    t.string "tipo"
    t.integer "computo_id", null: false
    t.integer "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["computo_id"], name: "index_computadors_on_computo_id"
    t.index ["producto_id"], name: "index_computadors_on_producto_id"
  end

  create_table "computos", force: :cascade do |t|
    t.string "tipoRed"
    t.string "RAM"
    t.string "procesador"
    t.string "almacenamiento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consolas", force: :cascade do |t|
    t.string "marca"
    t.string "paquete"
    t.integer "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producto_id"], name: "index_consolas_on_producto_id"
  end

  create_table "orden_items", force: :cascade do |t|
    t.integer "producto_id"
    t.integer "orden_id"
    t.float "precio_unidad"
    t.integer "cantidad"
    t.float "precio_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ordens", force: :cascade do |t|
    t.float "subtotal"
    t.float "total"
    t.float "impuesto"
    t.float "envio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "marca"
    t.string "linea"
    t.float "precio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "imagen"
  end

  create_table "tablets", force: :cascade do |t|
    t.string "pulgadas"
    t.integer "computo_id", null: false
    t.integer "producto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["computo_id"], name: "index_tablets_on_computo_id"
    t.index ["producto_id"], name: "index_tablets_on_producto_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nombres"
    t.string "apellidos"
    t.string "direccion"
    t.string "telefonoFijo"
    t.string "telefonoMovil"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "camaras", "productos"
  add_foreign_key "celulars", "computos"
  add_foreign_key "celulars", "productos"
  add_foreign_key "computadors", "computos"
  add_foreign_key "computadors", "productos"
  add_foreign_key "consolas", "productos"
  add_foreign_key "tablets", "computos"
  add_foreign_key "tablets", "productos"
end
