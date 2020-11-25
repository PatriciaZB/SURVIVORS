# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'date'



Booking.destroy_all
Activity.destroy_all
User.destroy_all

puts 'Creating users'

user1 = User.create(nickname: 'Rebeca Buendia', email: 'rebecabuendia@gmail.com', password:'123456')
user2 = User.create(nickname: 'Pilar Ternera', email: 'pilarternera@gmail.com', password:"654321")
user3 = User.create(nickname: 'Amaranta', email: 'amaranta@gmail.com', password:"1234567")

puts 'Users created'


puts 'Creating activities'

image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606305299/healingyoga.jpg')
yoga1 = Activity.create(name: 'Healing Yoga', description: 'Most experts agree that trauma’s effects live in the body, and that’s why yoga works. Yoga’s ability to touch us on every level of our being—physical, mental, emotional, and spiritual—makes it a powerful and effective means for trauma victims to reinhabit their bodies safely, calm their minds, experience emotions directly, and begin to feel a sense of strength and control.', address: 'Lübbener Str. 9, 10997 Berlin', start_at: DateTime.new(2020,12,5,16,0), end_at: DateTime.new(2020,12,5,17,0), category: 'yoga', presence: 'in-presence', user: user1)
yoga1.image.attach(io: image, filename: "healingyoga.jpg", content_type: "image/jpg")


# activity = Activity.create(name: 'Pretty Deadly Self Defense', description: 'Connect to your body and learn self-defense. Pretty Deadly Self Defense is a self-empowerment program through self defense. Designed for women by women, we have used our real-life experiences to develop a program that’s tailored for the way women actually learn, the things we actually face, and that’s actually fun. We are working hard at removing the stigma from learning self defense, and making it part of your self care.', address: 'Stromstraße 38, 10551 Berlin', start_at: DateTime.new(2020,12,8,19,0), end_at: DateTime.new(2020,12,8,21,0), category: "self-defense", presence: "in-presence", user: user2)

# activity = Activity.create(name: 'Lotus Dance', description: "As we tap into the deep sources of bodily wisdom through creative art expression, we dance the renewal, recreation, and healing of ourselves and our world. We truly believe that movement makes people more resilient physically and emotionally.", address: 'Gerichtstraße 23, 13347 Berlin', start_at: DateTime.new(2020,12,8,20,0), end_at: DateTime.new(2020,12,5,21,30), category: "dance", presence: "in-presence", user: user3)

puts 'Activities created'

# puts 'Creating bookings'

# booking1 = Booking.create(user: user1, activity: lotus_dance)

# booking2 = Booking.create(user: user1, activity: self_defense)

# puts 'Bookings created'
