class CreateMateria < ActiveRecord::Migration[5.1]
  def change
    create_table :materia do |t|
      t.string :matricula
      t.integer :Horas
      t.string :nombre
      t.integer :creditos
      t.integer :semestre

      t.timestamps
    end
  end
end
