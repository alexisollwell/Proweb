class CamposAlumnos < ActiveRecord::Migration[5.1]
  def change
  	add_column :alumnos, :descripcion, :text
  end
end
