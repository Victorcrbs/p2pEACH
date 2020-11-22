class AddAnuncioIdToComments < ActiveRecord::Migration[6.0]
  def change
  add_column :comments, :anuncio_id, :integer
  end
end
