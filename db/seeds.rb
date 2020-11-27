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
user5 = User.create(nickname: 'Ursula', email: 'ursula@gmail.com', password:"123456789")
user6 = User.create(nickname: 'Renata', email: 'renata@gmail.com', password:"123456789")
user7 = User.create(nickname: 'Meme', email: 'meme@gmail.com', password:"123456789")
user8 = User.create(nickname: 'Petra', email: 'petra@gmail.com', password:"123456789")
user9 = User.create(nickname: 'Santa Sofía de la Piedad', email: 'santa@gmail.com', password:"123456789")
user10 = User.create(nickname: 'F.C.', email: 'fernanda@gmail.com', password:"123456789")

puts 'Users created'


puts 'Creating activities'

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606305299/healingyoga.jpg')
yoga1 = Activity.create!(name: 'Healing Yoga', description: 'Most experts agree that trauma’s effects live in the body, and that’s why yoga works. Yoga’s ability to touch us on every level of our being—physical, mental, emotional, and spiritual—makes it a powerful and effective means for trauma victims to reinhabit their bodies safely, calm their minds, experience emotions directly, and begin to feel a sense of strength and control.', address: 'Lübbener Str. 9, 10997 Berlin', start_at: DateTime.new(2020,11,28,16,0), end_at: DateTime.new(2020,11,28,17,0), category: 'Yoga', presence: 'In-presence', user: user7, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606305299/healingyoga.jpg')
# yoga1.image.attach(io: image, filename: "healingyoga.jpg", content_type: "image/jpg")

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606311381/defense.jpg')
defense = Activity.create(name: 'Pretty Deadly Self Defense', description: 'Connect to your body and learn self-defense. Pretty Deadly Self Defense is a self-empowerment program through self defense. Designed for women by women, we have used our real-life experiences to develop a program that’s tailored for the way women actually learn, the things we actually face, and that’s actually fun. We are working hard at removing the stigma from learning self defense, and making it part of your self care.', address: 'Stromstraße 38, 10551 Berlin', start_at: DateTime.new(2020,12,4,19,0), end_at: DateTime.new(2020,12,4,21,0), category: 'Self defense', presence: 'In-presence', user: user2, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606311381/defense.jpg')
# defense.image.attach(io: image, filename: "defense.jpg", content_type: "image/jpg")

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606312440/lotus.jpg')
lotus_dance = Activity.create(name: 'Lotus Dance', description: "As we tap into the deep sources of bodily wisdom through creative art expression, we dance the renewal, recreation, and healing of ourselves and our world. We truly believe that movement makes people more resilient physically and emotionally.", address: 'Gerichtstraße 23, 13347 Berlin', start_at: DateTime.new(2020,12,1,20,0), end_at: DateTime.new(2020,12,1,21,30), category: 'Dance', presence: "In-presence", user: user3, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606312440/lotus.jpg')
# lotus_dance.image.attach(io: image, filename: "lotus.jpg", content_type: "image/jpg")

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606313032/kunda.jpg')
kundalini = Activity.create(name: 'Kundalini Yoga', description: "Kundalini Yoga is a magical science that uses sound, mantra, energy healing, exercises and meditations to release trauma from the energetic body, which surrounds the physical body. It is this field, known as the aura, that holds wounds. When those wounds are healed, radiance can occur.", address: 'Segitzdamm 48, 10969 Berlin', start_at: DateTime.new(2020,11,29,14,0), end_at: DateTime.new(2020,11,29,15,0), category: 'Yoga', presence: "In-presence", user: user3, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606313032/kunda.jpg')
# kundalini.image.attach(io: image, filename: "kunda.jpg", content_type: "image/jpg")

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606313807/exp.jpg')
dance_movement = Activity.create(name: 'Dance Movement Therapy', description: "This kind of therapy can be particularly useful in the area of physical trauma, physical abuse, and body-image disturbances or in conditions where certain physical or sensory limitations inhibit the realization of emotional or social needs. Namely, in various traumas body is often the victim of injuries, ailments and disasters and because of that it can be associated with pain, trauma, hurt, helplessness and fear. In those cases it is logical that body should be involved in the therapeutic process.", address: 'Friedrichstraße 47, 10117 Berlin', start_at: DateTime.new(2020,12,2,18,30), end_at: DateTime.new(2020,12,2,20,0), category: 'Dance', presence: "In-presence", user: user3, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606313807/exp.jpg')
# dance_movement.image.attach(io: image, filename: "exp.jpg", content_type: "image/jpg")

# image = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606314334/move.jpg')
transformative_dance = Activity.create(name: 'Transformative Dance', description: "Dance therapy is the therapeutic use of movement to further the emotional, cognitive, physical and social integration of the individual, based on the empirically supported premise that the body, mind and spirit are interconnected.", address: 'Rosa-Luxemburg-Straße 31, 10178 Berlin', start_at: DateTime.new(2020,12,4,19,30), end_at: DateTime.new(2020,12,4,21,0), category: 'Dance', presence: "In-presence", user: user3, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606314334/move.jpg')
# transformative_dance.image.attach(io: image, filename: "move.jpg", content_type: "image/jpg")


painting = Activity.create!(name: 'Painting to Heal', description: 'This activity is an opportunity for self discovery by tapping into your creativity as a way of healing yourself and others. It is a sacred space to thrive and explore expressions of creativity in a small, supportive community.', address: 'Okerstraße 42, 12049 Berlin', start_at: DateTime.new(2020,11,29,17,0), end_at: DateTime.new(2020,11,29,20,0), category: 'Painting', presence: 'In-presence', user: user1, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606399166/paint.jpg')

art = Activity.create!(name: 'Art therapy', description: "Art therapy allows people to externalize what is occurring inside of them. As they put together the pieces of their trauma story their physical experience starts to change. Just as art therapy bridges feelings and words it also can bridge back into feeling grounded and safe in one's body.", address: 'Sonnenallee 106, 12045 Berlin', start_at: DateTime.new(2020,12,2,19,0), end_at: DateTime.new(2020,12,2,21,30), category: 'Art', presence: 'In-presence', user: user2, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606400695/art.jpg')

self_def = Activity.create!(name: 'Self defense Berlin', description: "All the courses are walk-in courses, so you can come and go as you like. All the coaches and trainers are very caring: ask how you feel constantly and worry about every each person. Come learn self defense with us!", address: 'Hasenheide 10, 10967 Berlin', start_at: DateTime.new(2020,12,5,19,0), end_at: DateTime.new(2020,12,5,21,30), category: 'Self defense', presence: 'In-presence', user: user9, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606416564/SURVIVORS_14_caoxdq.jpg')

cook = Activity.create!(name: 'Cooking together', description: "Come try our community cooking classes. We will discuss several topics about gender while improving our cooking skills. No previous experience needed!", address: 'Oranienstraße 106, 10969 Berlin', start_at: DateTime.new(2020,12,3,20,0), end_at: DateTime.new(2020,12,3,22,30), category: 'Cooking', presence: 'In-presence', user: user6, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606416564/SURVIVORS_10_ty2acc.jpg')

talk1 = Activity.create!(name: 'How to recognize an abuser', description: "There are a few common questions we get from victims and survivors regarding how to communicate in their abusive relationships and how to recognize an abuser. We will discuss some of these issues in this talk.", address: 'Templiner Str. 7, 10119 Berlin', start_at: DateTime.new(2020,11,30,17,0), end_at: DateTime.new(2020,11,30,18,30), category: 'Talk', presence: 'In-presence', user: user5, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606416563/SURVIVORS_16_xbo6th.jpg')

yoga2 = Activity.create!(name: 'Yoga for trauma', description: "Achieving stabilization of the autonomic nervous system (ANS) through yoga can help people engage with counselling and psychotherapy, allowing them to begin to process their trauma. Yoga therapy may help people return to a baseline physiological state more quickly after a distressing memory is triggered.", address: 'Danziger Str. 44, 10435 Berlin', start_at: DateTime.new(2020,12,6,17,0), end_at: DateTime.new(2020,12,6,18,30), category: 'Yoga', presence: 'In-presence', user: user6, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606416564/SURVIVORS_13_n91ap8.jpg')

talk2 = Activity.create!(name: 'How to help a friend who is being abused', description: "Whether you suspect that a friend or family member is being abused or you witnessed someone being abused, you can take steps to help.", address: 'Templiner Str. 7, 10119 Berlin', start_at: DateTime.new(2020,11,29,19,0), end_at: DateTime.new(2020,11,29,21,30), category: 'Talk', presence: 'In-presence', user: user7, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606416563/SURVIVORS_17_a8bxde.jpg')

talk2 = Activity.create!(name: 'Support group for victims of abuse', description: "Group that offers support for survivors of domestic and sexual assault. The purpose of the education classes is to create an understanding of the dynamics of domestic violence, to look at the self-esteem, self-confidence of victims, and to help victims realize that the abuse is not their fault.", address: 'Frankfurter Tor 5, 10243 Berlin', start_at: DateTime.new(2020,12,1,19,0), end_at: DateTime.new(2020,12,01,21,30), category: 'Group therapy', presence: 'In-presence', user: user5, Altimage: 'https://res.cloudinary.com/dylgxsntq/image/upload/v1606416563/SURVIVORS_15_mkytwf.jpg')

puts 'Activities created'



puts 'Creating bookings'

booking1 = Booking.create(user: user1, activity: yoga1)
booking2 = Booking.create(user: user1, activity: dance_movement)
booking3 = Booking.create(user: user1, activity: painting)
booking4 = Booking.create(user: user2, activity: yoga1)
booking5 = Booking.create(user: user3, activity: yoga1)
booking6 = Booking.create(user: user4, activity: yoga1)

puts 'Bookings created'




puts 'Creating reviews'

review1 = Review.create(user: user10, activity: yoga1, description:'Comforted. Supported. Beautiful community of women healing together.', rating: 5)
review2 = Review.create(user: user3, activity: yoga1, description:'The best yoga session of my life. Highly recommended!', rating: 5)
review3 = Review.create(user: user2, activity: yoga1, description:'Beautiful healing session where I could really reconnect with my body.', rating: 5)
review4 = Review.create(user: user2, activity: defense, description:'The best part of Pretty Deadly Self Defense this is having found a community of women helping each other.', rating: 5)
review5 = Review.create(user: user3, activity: defense, description:'I finally feel more confident and secure in my daily life. It is an impressive class!', rating: 5)
review6 = Review.create(user: user3, activity: kundalini, description:'Relaxed, down to earth and welcoming. Class was challenging but with different options to suit different people.', rating: 5)
review7 = Review.create(user: user4, activity: yoga1, description:'Everyone is so wonderful and supportive. I love it!', rating: 5)
review8 = Review.create(user: user5, activity: yoga1, description:'Healing Yoga has done a lot for me in a few weeks. Staff is great and the classes never the same', rating: 5)
review9 = Review.create(user: user9, activity: yoga1, description:'I was nervous but the knowledgeable and compassionate teachers gave me the tools and encouragement I needed to develop a yoga practice that has helped me heal and regain my strength. I look forward to every class!', rating: 5)
review10 = Review.create(user: user8, activity: yoga1, description:'This studio is fantastic! It has a great vibe and all the instructors are knowledgeable, as well as really care about guiding the participants in their classes.', rating: 5)
review11 = Review.create(user: user7, activity: defense, description:'This is a great space. The staff and owners are very caring. They offer great classes and give a sense of acceptance so that you feel free to try things outside of your comfort zone. And isn’t that the best way to grow!', rating: 5)
review12 = Review.create(user: user6, activity: defense, description:'They really make you feel like you are part of a tribe: supportive, loving, respectful, encouraging. I really needed this in my life and will soon be going back.', rating: 5)
review13 = Review.create(user: user5, activity: defense, description:'My first class was amazing! This is exactly what I needed!', rating: 5)
review14 = Review.create(user: user7, activity: yoga1, description:'Such a great place to heal and meet people. I always leave feeling calm and positive.', rating: 5)
review15 = Review.create(user: user10, activity: defense, description:'I feel so much more confident walking at night now that I know how to defend myself. Susie was an incredibly knowledgeable and supportive teacher, and the class was so much fun!', rating: 5)
review16 = Review.create(user: user10, activity: defense, description:'I would recommend this to any one I know. I primarily wanted to learn self defense to help me develop confidence and boundaries in my daily life, and I am already seeing the payoff.', rating: 5)
review17 = Review.create(user: user6, activity: art, description:'Practical use of art to bring emotional healing. It is really helping me!', rating: 5)
review18 = Review.create(user: user9, activity: art, description:"It's really helping me express emotions that I've been holding onto for a long time. I really recommend it!", rating: 5)
review19 = Review.create(user: user2, activity: art, description:"Such an amazing and helpful experience. I am definitely doing it again.", rating: 5)
review20 = Review.create(user: user4, activity: art, description:"Beautiful group of people helping each other heal and recover from trauma. Art definitely helps. Thank you!", rating: 5)
review21 = Review.create(user: user2, activity: kundalini, description:"I love this class! I now do yoga multiple times per week and feel a greater connection between my mind and body.", rating: 4)
review22 = Review.create(user: user4, activity: kundalini, description:"Amazing experience! I totally recommend it!", rating: 5)
review23 = Review.create(user: user8, activity: kundalini, description:"Such a great place to heal and meet people. I always leave feeling calm and positive.", rating: 5)
review24 = Review.create(user: user9, activity: kundalini, description:"I have finally found the community of women that I needed. Thanks a lot for this space!", rating: 5)
review25 = Review.create(user: user10, activity: kundalini, description:"Beautiful group of people helping each other heal and recover from trauma.", rating: 4)
review26 = Review.create(user: user6, activity: painting, description:"I really needed something like this! Painting is a powerful way to express emotions.", rating: 5)
review27 = Review.create(user: user5, activity: painting, description:"This class is really helpimg me build a community and recover from trauma.", rating: 5)
review28 = Review.create(user: user9, activity: painting, description:"I have been feeling better since I started this class. Thanks for evything!", rating: 5)

puts 'Reviews created'













