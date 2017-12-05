class Foraneaextra < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :actividad_instructors, :actividad_extras 
  end
end
