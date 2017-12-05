class CreateClases < ActiveRecord::Migration[5.1]
  def change
    create_table :clases do |t|
      t.string :clave
      t.references :materium, foreign_key: true
      t.references :profesor, foreign_key: true
      t.integer :indice
      t.text :horario

      t.timestamps
    end
  end
end
