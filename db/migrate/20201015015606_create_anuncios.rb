class CreateAnuncios < ActiveRecord::Migration[6.0]
  def change
    create_table :anuncios do |t|
      t.string :item
      t.text :descrição
      t.text :horário
      t.string :tags

      t.timestamps
    end
  end
end
