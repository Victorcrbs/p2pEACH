class AddEstadoToAnuncios < ActiveRecord::Migration[6.0]
  def change
    add_column :anuncios, :estado, :string
  end
end
