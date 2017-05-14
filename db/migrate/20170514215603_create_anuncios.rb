class CreateAnuncios < ActiveRecord::Migration[5.1]
  def change
    create_table :anuncios do |t|
      t.string :titulo
      t.string :descricao
      t.string :depoimentoDONO
      t.attachment :image

      t.timestamps
    end
  end
end
