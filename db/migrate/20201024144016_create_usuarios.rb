class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :snome
      t.string :email
      t.string :password_digest
      t.string :fone

      t.timestamps
    end
    add_index :usuarios, :email, unique: true
  end
end
