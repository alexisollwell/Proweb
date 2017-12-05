class AddCalificacionToClaseAlumnos < ActiveRecord::Migration[5.1]
  def change
    add_column :clase_alumnos, :calificacion, :integer
  end
end
