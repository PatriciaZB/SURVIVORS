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
user4 = User.create(nickname: 'Aureliana', email: 'aureliana@gmail.com', password:"12345678")
user5 = User.create(nickname: 'Ursula', email: 'Ursula@gmail.com', password:"123456789")


puts 'Users created'


puts 'Creating activities'

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606305299/healingyoga.jpg')
yoga1 = Activity.create!(name: 'Healing Yoga', description: 'Most experts agree that trauma’s effects live in the body, and that’s why yoga works. Yoga’s ability to touch us on every level of our being—physical, mental, emotional, and spiritual—makes it a powerful and effective means for trauma victims to reinhabit their bodies safely, calm their minds, experience emotions directly, and begin to feel a sense of strength and control.', address: 'Lübbener Str. 9, 10997 Berlin', start_at: DateTime.new(2020,12,4,16,0), end_at: DateTime.new(2020,12,4,17,0), category: 'Yoga', presence: 'In-presence', user: user1, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606305299/healingyoga.jpg')
# yoga1.image.attach(io: image, filename: "healingyoga.jpg", content_type: "image/jpg")

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606311381/defense.jpg')
defense = Activity.create(name: 'Pretty Deadly Self Defense', description: 'Connect to your body and learn self-defense. Pretty Deadly Self Defense is a self-empowerment program through self defense. Designed for women by women, we have used our real-life experiences to develop a program that’s tailored for the way women actually learn, the things we actually face, and that’s actually fun. We are working hard at removing the stigma from learning self defense, and making it part of your self care.', address: 'Stromstraße 38, 10551 Berlin', start_at: DateTime.new(2020,12,4,19,0), end_at: DateTime.new(2020,12,4,21,0), category: 'Self defense', presence: 'In-presence', user: user2, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606311381/defense.jpg')
# defense.image.attach(io: image, filename: "defense.jpg", content_type: "image/jpg")

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606312440/lotus.jpg')
lotus_dance = Activity.create(name: 'Lotus Dance', description: "As we tap into the deep sources of bodily wisdom through creative art expression, we dance the renewal, recreation, and healing of ourselves and our world. We truly believe that movement makes people more resilient physically and emotionally.", address: 'Gerichtstraße 23, 13347 Berlin', start_at: DateTime.new(2020,12,4,20,0), end_at: DateTime.new(2020,12,4,21,30), category: 'Dance', presence: "In-presence", user: user3, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606312440/lotus.jpg')
# lotus_dance.image.attach(io: image, filename: "lotus.jpg", content_type: "image/jpg")

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606313032/kunda.jpg')
kundalini = Activity.create(name: 'Kundalini Yoga', description: "Kundalini Yoga is a magical science that uses sound, mantra, energy healing, exercises and meditations to release trauma from the energetic body, which surrounds the physical body. It is this field, known as the aura, that holds wounds. When those wounds are healed, radiance can occur.", address: 'Segitzdamm 48, 10969 Berlin', start_at: DateTime.new(2020,12,4,14,0), end_at: DateTime.new(2020,12,4,15,0), category: 'Yoga', presence: "In-presence", user: user3, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606313032/kunda.jpg')
# kundalini.image.attach(io: image, filename: "kunda.jpg", content_type: "image/jpg")

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606313807/exp.jpg')
dance_movement = Activity.create(name: 'Dance Movement Therapy', description: "This kind of therapy can be particularly useful in the area of physical trauma, physical abuse, and body-image disturbances or in conditions where certain physical or sensory limitations inhibit the realization of emotional or social needs. Namely, in various traumas body is often the victim of injuries, ailments and disasters and because of that it can be associated with pain, trauma, hurt, helplessness and fear. In those cases it is logical that body should be involved in the therapeutic process.", address: 'Friedrichstraße 47, 10117 Berlin', start_at: DateTime.new(2020,12,4,18,30), end_at: DateTime.new(2020,12,4,20,0), category: 'Dance', presence: "In-presence", user: user3, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606313807/exp.jpg')
# dance_movement.image.attach(io: image, filename: "exp.jpg", content_type: "image/jpg")

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606314334/move.jpg')
transformative_dance = Activity.create(name: 'Transformative Dance', description: "Dance therapy is the therapeutic use of movement to further the emotional, cognitive, physical and social integration of the individual, based on the empirically supported premise that the body, mind and spirit are interconnected.", address: 'Rosa-Luxemburg-Straße 31, 10178 Berlin', start_at: DateTime.new(2020,12,4,19,30), end_at: DateTime.new(2020,12,4,21,0), category: 'Dance', presence: "In-presence", user: user3, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606314334/move.jpg')
# transformative_dance.image.attach(io: image, filename: "move.jpg", content_type: "image/jpg")


painting = Activity.create!(name: 'Painting to Heal', description: 'This activity is an opportunity for self discovery by tapping into your creativity as a way of healing yourself and others. It is a sacred space to thrive and explore expressions of creativity in a small, supportive community.', address: 'Okerstraße 42, 12049 Berlin', start_at: DateTime.new(2020,12,4,17,0), end_at: DateTime.new(2020,12,4,20,0), category: 'Painting', presence: 'In-presence', user: user1, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606399166/paint.jpg')

art = Activity.create!(name: 'Art therapy', description: "Art therapy allows people to externalize what is occurring inside of them. As they put together the pieces of their trauma story their physical experience starts to change. Just as art therapy bridges feelings and words it also can bridge back into feeling grounded and safe in one's body.", address: 'Sonnenallee 106', start_at: DateTime.new(2020,12,4,19,0), end_at: DateTime.new(2020,12,4,21,30), category: 'Art', presence: 'In-presence', user: user2, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606400695/art.jpg')


puts 'Activities created'



puts 'Creating bookings'

booking1 = Booking.create(user: user1, activity: yoga1)
booking2 = Booking.create(user: user1, activity: dance_movement)
booking3 = Booking.create(user: user1, activity: painting)
booking4 = Booking.create(user: user2, activity: yoga1)
booking5 = Booking.create(user: user3, activity: yoga1)
booking6 = Booking.create(user: user3, activity: yoga1)

puts 'Bookings created'




puts 'Creating reviews'

review1 = Review.create(user: user1, activity: yoga1, description:'Comforted. Supported. Beautiful community of women healing together.', rating: 5)
review2 = Review.create(user: user3, activity: yoga1, description:'The best yoga session of my life. Highly recommended!', rating: 5)
review3 = Review.create(user: user2, activity: yoga1, description:'Beautiful healing session where I could really reconnect with my body.', rating: 5)
review4 = Review.create(user: user2, activity: defense, description:'The best part of Pretty Deadly Self Defense this is having found a community of women helping each other.', rating: 5)
review5 = Review.create(user: user3, activity: defense, description:'I finally feel more confident and secure in my daily life. It is an impressive class!', rating: 5)
review6 = Review.create(user: user3, activity: kundalini, description:'Relaxed, down to earth and welcoming. Class was challenging but with different options to suit different people.', rating: 5)
review7 = Review.create(user: user4, activity: yoga1, description:'Everyone is so wonderful and supportive. I love it!', rating: 5)
review8 = Review.create(user: user5, activity: yoga1, description:'Healing Yoga has done a lot for me in a few weeks. Staff is great and the classes never the same', rating: 5)

puts 'Reviews created'
