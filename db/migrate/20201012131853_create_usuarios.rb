class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :nusp
      t.string :senha
      t.string :numero

      t.timestamps
    end
  end
end
