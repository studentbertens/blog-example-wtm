class RemoveTaggingsFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :taggings, :string
    add_column :posts, :tags, :string
  end
end
