require 'faker'

10.times do	
	City.create(
	name: Faker::DragonBall.character, 
	postal_code: Faker::Number.number(5)
	)
end

10.times do	
	User.create(
	first_name: Faker::DrWho.actor, 
	last_name: Faker::DrWho.villian, 
	description: Faker::DrWho.specie, 
	email: Faker::Internet.email, 
	age: Faker::Number.between(1, 100), 
	city_id: rand(City.first.id..City.last.id)
	)
end

10.times do	
	Gossip.create(
	title: Faker::Book.title, 
	content: Faker::DrWho.catch_phrase, 
	date: Faker::Date.backward(14), 
	user_id: rand(User.first.id..User.last.id)
	)
end

10.times do	
	Tag.create(
	title: Faker::Book.title
	)
end

10.times do	
	GossipTag.create(
	tag_id: Faker::Number.between(Tag.first.id, Tag.last.id), 
	gossip_id: Faker::Number.between(Gossip.first.id, Gossip.last.id)
	)
end

10.times do	
	Comment.create(
	content: Faker::DrWho.quote, 
	user_id: Faker::Number.between(User.first.id, User.last.id), 
	gossip_id: Faker::Number.between(Gossip.first.id, Gossip.last.id)
	)
end

10.times do	
	Like.create(
	user_id: Faker::Number.between(User.first.id, User.last.id), 
	comment_id: Faker::Number.between(Comment.first.id, Comment.last.id), 
	gossip_id: Faker::Number.between(Gossip.first.id, Gossip.last.id)
	)
end
