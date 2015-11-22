class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.belongs_to :artesano, index: true, foreign_key: true
      t.string :artesano
      t.string :nombre
      t.text :desc
      t.integer :precio
      t.string :area
      t.string :tipo
      t.string :material
      t.string :color
      t.string :foto1
      t.string :foto2
      t.string :foto3

      t.timestamps null: false
    end
  end
end
