class CreateActividadInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :actividad_instructors do |t|
      t.references :actividadExtra, foreign_key: true
      t.references :instructor, foreign_key: true
      t.string :horario
      t.string :lugar

      t.timestamps
    end
  end
end
