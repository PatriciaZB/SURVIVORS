# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

Booking.destroy_all
Activity.destroy_all
User.destroy_all

puts 'Creating an user'

user1 = User.create(nickname: 'Rebecca Buendia', email: 'rebeccabuendia@gmail.com', password:'123456')
user2 = User.create(nickname: 'Pilar Ternera', email: 'pilarternera@gmail.com', password:"654321")
user3 = User.create(nickname: 'Amaranta', email: 'amaranta@gmail.com', password:"1234567")

puts 'User created'


puts 'Creating activities'

kundalini_yoga = Activity.create(name: 'Kundalini Yoga', description: 'Kundalini Yoga is a magical science that uses sound, mantra, energy healing, exercises and meditations to release trauma from the energetic body, which surrounds the physical body. It is this field, known as the aura, that holds wounds. When those wounds are healed, radiance can occur. Radiance is the magnetic frequency that draws in beauty, love, and light. Attracting abundance into your life starts in the subtle (energetic) body–not the mind.', address: 'Lübbener Str. 9, 10997 Berlin', start_at: DateTime.new(2020,12,5,4,0), end_at: DateTime.new(2020,12,5,5,30), user: user1)

self_defence_training = Activity.create(name: 'My Self Defence', description: 'My Self Defense will help you to gain set of awareness, assertiveness, verbal confrontation skills, safety strategies, and physical techniques that will enable you to escape, resist, and survive violent attacks. It will provides psychological awareness and verbal skills, not just physical training.', address: 'Bredowstraße 18, 10551 Dortmund', start_at: DateTime.new(2020,12,8,4,0), end_at: DateTime.new(2020,12,8,6,0), user: user2)

lotus_dance = Activity.create(name: 'Lotus Dance', description: "Lotus Dance is a dancing class based on specific body's movement that will help to find a healthier equilibrium, both physiologically and emotionally. It improves hormonal and nervous-system regulation, and it helps people connect with their bodies, which expands their capacity to counter dysregulation and to trust themselves. We truly believe that movements also make people more resilient physically and emotionally.", address: 'Gerichtstraße 23, 13347 Berlin', start_at: DateTime.new(2020,12,5,4,0), end_at: DateTime.new(2020,12,5,5,3), user: user3)

puts 'Activities created'

puts 'Creating bookings'

booking1 = Booking.create(user: user1, activity: lotus_dance)

booking2 = Booking.create(user: user1, activity: self_defence_training)

puts 'Bookings created'
