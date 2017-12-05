class AddImageToProfesors < ActiveRecord::Migration[5.1]
  def change
    add_column :profesors, :image, :string
  end
end
