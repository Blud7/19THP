# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



10.times do |index|

	cities = City.create!(name: Faker::GameOfThrones.city, postal_code: Faker::Address.zip)

end

10.times do |index|

	users = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::ChuckNorris.fact, email: Faker::Internet.email, age: "#{rand(1..99)}", city_id:"#{rand(1..10)}")

end

20.times do |index|

	gossips = Gossip.create!(user_id: "#{rand(1..10)}", title: Faker::Name.name, content: Faker::ChuckNorris.fact)

end

10.times do |index|

	tags = Tag.create!(title: Faker::Name.name)

end

# 1.times do |index|

# 	pm = PrivateMessage.create!(recipients_id: "#{rand(1..20)}", sender_id: "2", content: Faker::ChuckNorris.fact)

# end