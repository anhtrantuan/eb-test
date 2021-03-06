class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :author_id

      t.timestamps null: false
    end
    add_index :posts, :author_id
  end
end
