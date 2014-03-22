class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references   :user
      t.text         :title
      t.text         :body
      t.string       :category
      t.string       :tags, array: true
      t.date         :published_on
      t.timestamps
    end

    add_index :posts, :category
    add_index :posts, :tags
  end
end
