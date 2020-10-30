class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :text,  null: false
      t.text :image,   null: false
      t.string :title, null: false
      t.timestamps
    end
  end
end
