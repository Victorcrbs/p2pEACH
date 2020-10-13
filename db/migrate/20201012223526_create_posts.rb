class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :Obj
      t.text :Notes
      t.text :time
      t.text :tags 
      t.timestamps null: false
    end
  end
end
