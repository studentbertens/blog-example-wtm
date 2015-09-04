class AddTagsInfoToPosts < ActiveRecord::Migration

  def up
    Post.all.each {|post| post.update_attributes({tags: "default taggs"})}
  end

  def down
    Post.all.each {|post| post.update_attributes({tags: ""})}
  end

end
