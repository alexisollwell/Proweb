class CreateActividadExtras < ActiveRecord::Migration[5.1]
  def change
    create_table :actividad_extras do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
