class AddTagsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :taggings, :string
  end
end
