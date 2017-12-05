class CreateClaseAlumnos < ActiveRecord::Migration[5.1]
  def change
    create_table :clase_alumnos do |t|
      t.references :alumno, foreign_key: true
      t.references :clase, foreign_key: true
      t.text :comentario

      t.timestamps
    end
  end
end
