class CreatePost1s < ActiveRecord::Migration
  def change
    create_table :post1s do |t|
      t.string :Titulo
      t.string :Autor
      t.text :descripciondellibro

      t.timestamps
    end
  end
end
