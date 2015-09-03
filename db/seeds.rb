# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  title = Faker::Lorem.sentence
  body = Faker::Lorem.paragraph
  post = Post.create(title: title, body: body)
  rand(5).times do
    message = Faker::Lorem.paragraph
    post.comments.create(message: message)
  end
end

#20.times do

#  id_post = rand(1..20)
#  comment = Comment.create(message: message, post_id: id_post)
#end
