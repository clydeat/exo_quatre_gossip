# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do	
	city = City.create(name: Faker::DragonBall.character, postal_code: Faker::Number.number(5))
end

10.times do	
	user = User.create(first_name: Faker::DrWho.actor, last_name: Faker::DrWho.villian, 
		description: Faker::DrWho.specie, email: Faker::Omniauth.google[:email], 
		age: Faker::Number.between(1, 100), city_id: Faker::SiliconValley.company)
end

10.times do	
	privatem = PrivateMessage.create(content: Faker::Book.title, date: Faker::Date.backward(14) 
	user_id: Faker::Number.between(User.first.id, User.last.id))
end

10.times do	
	gossip = Gossip.create(title: Faker::Book.title, content: Faker::DrWho.catch_phrase, 
	date: Faker::Date.backward(14), user_id: Faker::Number.between(User.first.id, User.last.id))
end

10.times do	
	tag = Tag.create(title: Faker::Book.title)
end

10.times do	
	gossip_tag = GossipTag.create(tag_id: Faker::Number.between(Tag.first.id, Tag.last.id), 
	gossip_id: Faker::Number.between(Gossip.first.id, Gossip.last.id))
end

10.times do	
	comment = Comment.create(content: Faker::DrWho.quote, user_id: Faker::Number.between(User.first.id, User.last.id), 
	gossip_id: Faker::Number.between(Gossip.first.id, Gossip.last.id))
end

10.times do	
	like = Like.create(user_id: Faker::Number.between(User.first.id, User.last.id), 
	comment_id: Faker::Number.between(Comment.first.id, Comment.last.id), 
	gossip_id: Faker::Number.between(Gossip.first.id, Gossip.last.id))
end
