class AddColumnImovelIdToAnuncios < ActiveRecord::Migration[5.1]
  def change
    add_column :anuncios, :imovel_id, :integer
  end
end
