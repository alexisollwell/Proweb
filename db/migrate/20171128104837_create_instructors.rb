class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors do |t|
      t.string :ap_pat
      t.string :ap_mat
      t.string :nombre

      t.timestamps
    end
  end
end
