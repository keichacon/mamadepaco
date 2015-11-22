class CreateArtesanos < ActiveRecord::Migration
  def change
    create_table :artesanos do |t|
      t.string :tipo
      t.string :nombre
      t.text :exp
      t.string :region
      t.string :t_taller
      t.string :t_artesania
      t.text :desc
      t.string :logo
      t.string :foto
      t.string :banner1
      t.string :banner2
      t.string :banner3
      t.string :banner4

      t.timestamps null: false
    end
  end
end
