class CreateAlumnoActividads < ActiveRecord::Migration[5.1]
  def change
    create_table :alumno_actividads do |t|
      t.references :alumno, foreign_key: true
      t.references :actividadinstructor, foreign_key: true

      t.timestamps
    end
  end
end
