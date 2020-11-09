class AddUsuarioIdToAnuncios < ActiveRecord::Migration[6.0]
  def change
    add_reference :anuncios, :usuario, index: true, foreign_key: true
  end
end
