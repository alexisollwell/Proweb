class CambioColumna < ActiveRecord::Migration[5.1]
  def change
  	rename_column :alumnos, :nobre, :nombre
  end
end
