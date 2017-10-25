# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.create!(username: 'kiet', password: '123', name: 'Manh Kiet')
User.create!(username: 'hoanglan', password: 'lan123', name: 'Hoang Lan')
Conversation.delete_all
Conversation.create!(sender_id: 2, recipient_id: 1)
Message.delete_all
Message.create!(body: 'Hi', user_id: 2, conversation_id: 1, read: false)
