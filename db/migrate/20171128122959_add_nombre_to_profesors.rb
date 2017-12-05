class AddNombreToProfesors < ActiveRecord::Migration[5.1]
  def change
    add_column :profesors, :nombre, :string
    add_column :profesors, :no_control, :string
    add_column :profesors, :ap_pat, :string
    add_column :profesors, :ap_mat, :string
    add_column :profesors, :telefono, :string
    add_column :profesors, :colonia, :string
    add_column :profesors, :calle, :string
    add_column :profesors, :tipo_sangre, :string
    add_column :profesors, :titulo, :string
  end
end
