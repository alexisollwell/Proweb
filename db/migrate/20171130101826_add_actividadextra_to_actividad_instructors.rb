class AddActividadextraToActividadInstructors < ActiveRecord::Migration[5.1]
  def change
    add_reference :actividad_instructors, :actividad_extra, foreign_key: true
  end
end
