class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :text,  null: false
      t.string :title, null: false
      t.integer :user_id, foreign_key: true, null: false
      t.timestamps
    end
  end
end
