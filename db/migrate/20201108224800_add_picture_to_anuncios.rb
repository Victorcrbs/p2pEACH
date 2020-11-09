class AddPictureToAnuncios < ActiveRecord::Migration[6.0]
  def change
    add_column :anuncios, :picture, :string
  end
end
