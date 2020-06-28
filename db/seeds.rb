Category.destroy_all
User.destroy_all
Post.destroy_all
PostCategory.destroy_all
Comment.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cool = Category.create(name: "cool")
tight = Category.create(name: "tight")

scott = User.create(username: 'scottrick', email: 'koka922@aol.com')
monique = User.create(username: 'monmon87', email: 'monmon87@aol.com')

post1 = Post.create(title: "EDM Rules", content: "EDM is so cool")
post2 = Post.create(title: "Marvel Rules", content: "Marvel is so cool")

post_category1 = PostCategory.create(post: post1, category: cool)
post_category2 = PostCategory.create(post: post2, category: tight)

comment1 = Comment.create(content: "YUP!", user: scott, post: post1)
comment2 = Comment.create(content: "Yes!", user: monique, post: post2)