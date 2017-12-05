class AddNombreToAlumnos < ActiveRecord::Migration[5.1]
  def change
    add_column :alumnos, :nobre, :string
    add_column :alumnos, :no_control, :string
    add_column :alumnos, :ap_pat, :string
    add_column :alumnos, :ap_mat, :string
    add_column :alumnos, :telefono, :string
    add_column :alumnos, :colonia, :string
    add_column :alumnos, :calle, :string
    add_column :alumnos, :tipo_sangre, :string
  end
end
