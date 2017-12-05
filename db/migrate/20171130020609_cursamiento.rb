class Cursamiento < ActiveRecord::Migration[5.1]
  def change
  	add_column :clase_alumnos, :cursador, :boolean
  end
end
