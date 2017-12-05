class AddImageToAlumnos < ActiveRecord::Migration[5.1]
  def change
    add_column :alumnos, :image, :string
  end
end
