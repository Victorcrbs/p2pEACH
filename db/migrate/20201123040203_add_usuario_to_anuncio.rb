class AddUsuarioToAnuncio < ActiveRecord::Migration[6.0]
  def change
    add_reference :anuncios, :usuario, null: false, index: true, foreign_key: true
  end
end
