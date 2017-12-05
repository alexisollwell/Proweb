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

ActiveRecord::Schema.define(version: 20171130101826) do

  create_table "actividad_extras", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actividad_instructors", force: :cascade do |t|
    t.integer "actividadExtra_id"
    t.integer "instructor_id"
    t.string "horario"
    t.string "lugar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "actividad_extra_id"
    t.index ["actividadExtra_id"], name: "index_actividad_instructors_on_actividadExtra_id"
    t.index ["actividad_extra_id"], name: "index_actividad_instructors_on_actividad_extra_id"
    t.index ["instructor_id"], name: "index_actividad_instructors_on_instructor_id"
  end

  create_table "alumno_actividads", force: :cascade do |t|
    t.integer "alumno_id"
    t.integer "actividadinstructor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actividadinstructor_id"], name: "index_alumno_actividads_on_actividadinstructor_id"
    t.index ["alumno_id"], name: "index_alumno_actividads_on_alumno_id"
  end

  create_table "alumnos", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "no_control"
    t.string "ap_pat"
    t.string "ap_mat"
    t.string "telefono"
    t.string "colonia"
    t.string "calle"
    t.string "tipo_sangre"
    t.string "image"
    t.text "descripcion"
    t.index ["email"], name: "index_alumnos_on_email", unique: true
    t.index ["reset_password_token"], name: "index_alumnos_on_reset_password_token", unique: true
  end

  create_table "clase_alumnos", force: :cascade do |t|
    t.integer "alumno_id"
    t.integer "clase_id"
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "calificacion"
    t.boolean "cursador"
    t.index ["alumno_id"], name: "index_clase_alumnos_on_alumno_id"
    t.index ["clase_id"], name: "index_clase_alumnos_on_clase_id"
  end

  create_table "clases", force: :cascade do |t|
    t.string "clave"
    t.integer "materium_id"
    t.integer "profesor_id"
    t.integer "indice"
    t.text "horario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["materium_id"], name: "index_clases_on_materium_id"
    t.index ["profesor_id"], name: "index_clases_on_profesor_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "ap_pat"
    t.string "ap_mat"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materia", force: :cascade do |t|
    t.string "matricula"
    t.integer "Horas"
    t.string "nombre"
    t.integer "creditos"
    t.integer "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "no_control"
    t.string "ap_pat"
    t.string "ap_mat"
    t.string "telefono"
    t.string "colonia"
    t.string "calle"
    t.string "tipo_sangre"
    t.string "titulo"
    t.string "image"
    t.index ["email"], name: "index_profesors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_profesors_on_reset_password_token", unique: true
  end

end
