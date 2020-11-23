class AddTipoToAnuncios < ActiveRecord::Migration[6.0]
  def change
    add_column :anuncios, :tipo, :string, null: false
  end
end
