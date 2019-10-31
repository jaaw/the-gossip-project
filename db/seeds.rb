# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#User.destroy_all
#City.destroy_all
#Gossip.destroy_all
#Tag.destroy_all
#Linktag.destroy_all
#PrivateMessage.destroy_all

10.times do
  city = City.create(
    name: Faker::Name.name,
    zip_code: Faker::Address.unique.zip)
    puts "validate"
end
10.times do
  puts " tyty"
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.famous_last_words,
    email: Faker::Internet.email,
    age: rand(18..99),
    password: "kellyan",
    city_id: City.all.sample.id)
    
    
end


20.times do
  puts"gossip"
  user = rand(1..10)
    gossip = Gossip.create!(
      title: Faker::Book.unique.title,
      content: Faker::Quote.famous_last_words,
      user_id: user)
end

10.times do
  puts"tag"
    tag = Tag.create!(
      title: Faker::Book.unique.title)
end

5.times do
  puts"private"
  sender =  User.all.sample.id 
  recipient =  User.all.sample.id
    pm = PrivateMessage.create!(
      recipient_id: 1,
      sender_id: 2,
      content: Faker::Quote.famous_last_words,
      recipient_id: sender,
      sender_id: recipient)
      
      
end

20.times do
puts"linktag"
	linktag = Linktag.create!(
    tag_id: Tag.all.sample.id,
    gossip_id: Gossip.all.sample.id)
end
