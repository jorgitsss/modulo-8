class CreateBloggers < ActiveRecord::Migration[7.0]
  def change
    create_table :bloggers do |t|
      t.string :titulo
      t.string :contenido
      t.string :link
      t.integer :tipo
      t.integer :estado

      t.timestamps
    end
  end
end
