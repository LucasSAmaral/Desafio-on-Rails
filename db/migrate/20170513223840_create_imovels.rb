class CreateImovels < ActiveRecord::Migration[5.1]
  def change
    create_table :imovels do |t|
      t.integer :codigo
      t.string :tipo
      t.float :valor
      t.float :valorIPTU
      t.float :valorCondominio
      t.integer :numQUARTOS
      t.integer :numSUITES
      t.integer :numBANHEIROS
      t.integer :numVAGAS
      t.float :areaTOTAL
      t.string :extras

      t.timestamps
    end
  end
end
