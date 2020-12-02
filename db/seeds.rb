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
Review.destroy_all
Activity.destroy_all

Answer.destroy_all
Question.destroy_all

User.destroy_all

puts 'Creating users'

user1 = User.create(nickname: 'Rebeca Buendia', email: 'rebecabuendia@gmail.com', password:'123456')
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606822224/Untitled_design_muahys.png')
user1.avatar.attach(io: file, filename: 'user1.png', content_type: 'image/png')
user1.save

user2 = User.create(nickname: 'Pilar Ternera', email: 'pilarternera@gmail.com', password:"654321")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606822977/Untitled_design_1_up6vqw.png')
user2.avatar.attach(io: file, filename: 'user2.png', content_type: 'image/png')
user2.save

user3 = User.create(nickname: 'Amaranta', email: 'amaranta@gmail.com', password:"1234567")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606823580/Untitled_design_2_w3atfk.png')
user3.avatar.attach(io: file, filename: 'user3.png', content_type: 'image/png')
user3.save


user4 = User.create(nickname: 'Aureliana', email: 'aureliana@gmail.com', password:"12345678")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824545/Untitled_design_7_rbiubq.png')
user4.avatar.attach(io: file, filename: 'user4.png', content_type: 'image/png')
user4.save


user5 = User.create(nickname: 'Ursula', email: 'ursula@gmail.com', password:"123456789")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824547/Untitled_design_8_utfvjh.png')
user5.avatar.attach(io: file, filename: 'user5.png', content_type: 'image/png')
user5.save


user6 = User.create(nickname: 'Renata', email: 'renata@gmail.com', password:"123456789")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824547/Untitled_design_5_wnjxxc.png')
user6.avatar.attach(io: file, filename: 'user6.png', content_type: 'image/png')
user6.save


user7 = User.create(nickname: 'Meme', email: 'meme@gmail.com', password:"123456789")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824547/Untitled_design_4_avo9uo.png')
user7.avatar.attach(io: file, filename: 'user7.png', content_type: 'image/png')
user7.save


user8 = User.create(nickname: 'Petra', email: 'petra@gmail.com', password:"123456789")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824548/Untitled_design_3_ugl8d5.png')
user8.avatar.attach(io: file, filename: 'user8.png', content_type: 'image/png')
user8.save


user9 = User.create(nickname: 'Santa Sofía de la Piedad', email: 'santa@gmail.com', password:"123456789")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824549/Untitled_design_9_vlb5sj.png')
user9.avatar.attach(io: file, filename: 'user9.png', content_type: 'image/png')
user9.save


user10 = User.create(nickname: 'F.C.', email: 'fernanda@gmail.com', password:"123456789")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824550/Untitled_design_6_aqru0h.png')
user10.avatar.attach(io: file, filename: 'user10.png', content_type: 'image/png')
user10.save


user11 = User.create(nickname: 'Remedios', email: 'remedios@gmail.com', password:"123456789")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824552/Untitled_design_12_ospjgd.png')
user11.avatar.attach(io: file, filename: 'user11.png', content_type: 'image/png')
user11.save


user12 = User.create(nickname: 'G.G.M.', email: 'gabo@gmail.com', password:"123456789")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824551/Untitled_design_10_elr2v7.png')
user12.avatar.attach(io: file, filename: 'user12.png', content_type: 'image/png')
user12.save


user13 = User.create(nickname: 'Anonymous', email: 'a@gmail.com', password:"123456789")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824553/Untitled_design_11_d4xmtv.png')
user13.avatar.attach(io: file, filename: 'user13.png', content_type: 'image/png')
user13.save


user14 = User.create(nickname: 'J.C.B.P.', email: 'jcbp@gmail.com', password:"123456789")
file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606824552/Untitled_design_13_gjduyw.png')
user14.avatar.attach(io: file, filename: 'user14.png', content_type: 'image/png')
user14.save

puts 'Users created'


puts 'Creating activities'

yoga1 = Activity.create!(name: 'Healing yoga', description: "Most experts agree that trauma’s effects live in the body, and that’s why yoga works. Yoga’s ability to touch us on every level of our being—physical, mental, emotional, and spiritual—makes it a powerful and effective means for trauma victims to reinhabit their bodies safely, calm their minds, experience emotions directly, and begin to feel a sense of strength and control. It’s widely known that yoga is not just a physical practice, but few people know that outside of its centering and calming benefits, yoga can also be an intensely emotional journey. Your deeper mind now has the opportunity to process issues that you’ve been holding below the surface of your immediate consciousness, whether that is stress or anger or intense sadness—or maybe a confusing mix of many things.", address: 'Lübbener Str. 9, 10997 Berlin', start_at: DateTime.new(2020,12,5,16,0), end_at: DateTime.new(2020,12,5,17,0), category: 'Yoga', presence: 'In-presence', user: user7)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606416564/SURVIVORS_13_n91ap8.jpg')
yoga1.image.attach(io: file, filename: 'yoga1.jpg', content_type: 'image/jpg')
yoga1.save

defense = Activity.create(name: 'Pretty deadly self defense', description: "Connect to your body and learn self-defense. Pretty Deadly Self Defense is a self-empowerment program through self defense. Designed for women by women, we have used our real-life experiences to develop a program that’s tailored for the way women actually learn, the things we actually face, and that’s actually fun. We are working hard at removing the stigma from learning self defense, and making it part of your self care. Learning self defense is more than just learning how to punch and kick. It's about learning where your boundaries are, learning how to trust yourself, and learning what your body can really do, When you learn what options you really have, you have hope. And when you have hope, you can change your life. And maybe even the world.", address: 'Stromstraße 38, 10551 Berlin', start_at: DateTime.new(2020,12,5,19,0), end_at: DateTime.new(2020,12,5,21,0), category: 'Self defense', presence: 'In-presence', user: user2)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606311381/defense.jpg')
defense.image.attach(io: file, filename: 'defense.jpg', content_type: 'image/jpg')
defense.save

lotus_dance = Activity.create(name: 'Lotus dance', description: "As we tap into the deep sources of bodily wisdom through creative art expression, we dance the renewal, recreation, and healing of ourselves and our world. We truly believe that movement makes people more resilient physically and emotionally. Dance movement is a therapeutic form of exercise which is great not only for physical health but also mental and emotional health. Music itself can be very powerful. It can affect our moods and our state of well-being by triggering memories and other emotional experiences. Just hearing a song from our childhood can create a sensation in our entire bodies that can instantly affect our mood and trigger memories in just a matter of seconds. When dance or any movement is set to music it can create a stress relieving, joyful and sometimes healing moment for those involved as well as increasing/releasing endorphins in the brain.", address: 'Gerichtstraße 23, 13347 Berlin', start_at: DateTime.new(2020,12,5,20,0), end_at: DateTime.new(2020,12,5,21,30), category: 'Dance', presence: "In-presence", user: user3)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606312440/lotus.jpg')
lotus_dance.image.attach(io: file, filename: 'lotus_dance.jpg', content_type: 'image/jpg')
lotus_dance.save

kundalini = Activity.create(name: 'Kundalini yoga', description: "Kundalini Yoga is a magical science that uses sound, mantra, energy healing, exercises and meditations to release trauma from the energetic body, which surrounds the physical body. It is this field, known as the aura, that holds wounds. When those wounds are healed, radiance can occur. While yoga can be a physically intense activity, the poses and asanas of a practice can bring your brain into a deeply focused, neutral state. This helps you process anything that is bothering you subconsciously, but that you’ve been unable or unwilling to access directly. Yoga gives your mind a way to process the feelings we bury and push aside.", address: 'Segitzdamm 48, 10969 Berlin', start_at: DateTime.new(2020,12,5,14,0), end_at: DateTime.new(2020,12,5,15,0), category: 'Yoga', presence: "In-presence", user: user3)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606416564/SURVIVORS_11_rym19e.jpg')
kundalini.image.attach(io: file, filename: 'kundalini.jpg', content_type: 'image/jpg')
kundalini.save


dance_movement = Activity.create(name: 'Dance movement therapy', description: "This kind of therapy can be particularly useful in the area of physical trauma, physical abuse, and body-image disturbances or in conditions where certain physical or sensory limitations inhibit the realization of emotional or social needs. Namely, in various traumas body is often the victim of injuries, ailments and disasters and because of that it can be associated with pain, trauma, hurt, helplessness and fear. In those cases it is logical that body should be involved in the therapeutic process. Dance therapy is a great way to express emotions that are sometimes not easily expressed verbally. We believe that environment is your body.", address: 'Friedrichstraße 47, 10117 Berlin', start_at: DateTime.new(2020,12,6,18,30), end_at: DateTime.new(2020,12,6,20,0), category: 'Dance', presence: "In-presence", user: user3)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606313807/exp.jpg')
dance_movement.image.attach(io: file, filename: 'dance_movement.jpg', content_type: 'image/jpg')
dance_movement.save

transformative_dance = Activity.create(name: 'Transformative dance', description: "Dance therapy is the therapeutic use of movement to further the emotional, cognitive, physical and social integration of the individual, based on the empirically supported premise that the body, mind and spirit are interconnected. Any form of exercise is great for relieving stress in the mind and body. Dance is no different. Dance therapy is a great stress reliever, not only because it is great physically for the body but it is also emotionally therapeutic. Since movement can be related to thoughts and feelings, dancing can bring changes to emotions and attitudes almost instantly. We want everyone to have the tools to live their lives as they choose for themselves, free of fear and full of joy.", address: 'Rosa-Luxemburg-Straße 31, 10178 Berlin', start_at: DateTime.new(2020,12,7,19,30), end_at: DateTime.new(2020,12,7,21,0), category: 'Dance', presence: "In-presence", user: user3)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606314334/move.jpg')
transformative_dance.image.attach(io: file, filename: 'transformative_dance.jpg', content_type: 'image/jpg')
transformative_dance.save

painting = Activity.create!(name: 'Painting to heal', description: "This activity is an opportunity for self discovery by tapping into your creativity as a way of healing yourself and others. It is a sacred space to thrive and explore expressions of creativity in a small, supportive community. The brain is stimulated by art therapy. The traumatic memories are stored on the right hemisphere of the brain and speech is positioned on the left. Interestingly enough, art is a right-brain activity that helps connect the dots between trauma and art. A person with trauma may find that an activity such as drawing is much easier than talking about what happened. When words are not sufficient, art can push someone to find coping strategies and progressively get grounded in therapy.", address: 'Okerstraße 42, 12049 Berlin', start_at: DateTime.new(2020,12,7,17,0), end_at: DateTime.new(2020,12,7,20,0), category: 'Painting', presence: 'In-presence', user: user1)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606399166/paint.jpg')
painting.image.attach(io: file, filename: 'painting.jpg', content_type: 'image/jpg')
painting.save

art = Activity.create!(name: 'Art therapy', description: "Art therapy allows people to externalize what is occurring inside of them. As they put together the pieces of their trauma story their physical experience starts to change. Just as art therapy bridges feelings and words it also can bridge back into feeling grounded and safe in one's body. As trauma continues to remain a prevalent influence in an individual’s life, they may find it necessary to want to alleviate the symptoms. Depending on the depth and weight of the trauma, some therapeutic outlets have enormous potential to heal the pain. Art therapy is an approach that has shown excellent results for someone who has post-traumatic stress disorder (PTSD) and quite honestly could become the relief they need.", address: 'Sonnenallee 106, 12045 Berlin', start_at: DateTime.new(2020,12,9,19,0), end_at: DateTime.new(2020,12,9,21,30), category: 'Art', presence: 'In-presence', user: user1)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606400695/art.jpg')
art.image.attach(io: file, filename: 'art.jpg', content_type: 'image/jpg')
art.save

self_def = Activity.create!(name: 'Self defense Berlin', description: "All the courses are walk-in courses, so you can come and go as you like. All the coaches and trainers are very caring: ask how you feel constantly and worry about every each person. When you feel safe, grounded and can trust your environment, you have the confidence to explore, to adventure, to grow. Giving yourself tools you can rely on frees up that time and energy to focus on the things that really matter. We want everyone to have the tools to live their lives as they choose for themselves, free of fear and full of joy. Come learn self defense with us!", address: 'Hasenheide 10, 10967 Berlin', start_at: DateTime.new(2020,12,8,19,0), end_at: DateTime.new(2020,12,8,21,30), category: 'Self defense', presence: 'In-presence', user: user9)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606416564/SURVIVORS_14_caoxdq.jpg')
self_def.image.attach(io: file, filename: 'self_def.jpg', content_type: 'image/jpg')
self_def.save


cook = Activity.create!(name: 'Cooking together', description: "The emotional benefits of cooking are myriad; many programs around the world help people with mood disorders and other issues get into the kitchen as part of their treatment, a practice known as 'therapeutic cooking'. And it's something you can replicate in your own home, with a bit of effort and an ingredient or two.Come try our community cooking classes. We will discuss several topics about gender while improving our cooking skills. No previous experience needed!", address: 'Oranienstraße 106, 10969 Berlin', start_at: DateTime.new(2020,12,10,20,0), end_at: DateTime.new(2020,12,10,22,30), category: 'Cooking', presence: 'In-presence', user: user6)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606416564/SURVIVORS_10_ty2acc.jpg')
cook.image.attach(io: file, filename: 'cook.jpg', content_type: 'image/jpg')
cook.save

talk1 = Activity.create!(name: 'How to recognize an abuser', description: "There are a few common questions we get from victims and survivors regarding how to communicate in their abusive relationships and how to recognize an abuser. There is no one typical, detectable personality of an abuser. However, they do often display common characteristics. We will discuss some of these topics in this talk. Our counsellors provide women with confidential support and if needed can help them find appropriate local support options in their area. This new support service thus caters to a concrete social need and plays an important role in directing victims, relatives of victims, friends and professionals to appropriate support resources.", address: 'Templiner Str. 7, 10119 Berlin', start_at: DateTime.new(2020,12,5,17,0), end_at: DateTime.new(2020,12,5,18,30), category: 'Talk', presence: 'In-presence', user: user5)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606416563/SURVIVORS_17_a8bxde.jpg')
talk1.image.attach(io: file, filename: 'talk1.jpg', content_type: 'image/jpg')
talk1.save


yoga2 = Activity.create!(name: 'Yoga for trauma', description: "Achieving stabilization of the autonomic nervous system (ANS) through yoga can help people engage with counselling and psychotherapy, allowing them to begin to process their trauma. Yoga therapy may help people return to a baseline physiological state more quickly after a distressing memory is triggered. Yoga gives your mind a way to process the feelings we bury and push aside. This results in the confusion you experience when suddenly overwhelmed by emotion on the mat, and it can take anywhere from moments to days to search through yourself and consciously pinpoint the original source of the emotion.", address: 'Danziger Str. 44, 10435 Berlin', start_at: DateTime.new(2020,12,9,17,0), end_at: DateTime.new(2020,12,9,18,30), category: 'Yoga', presence: 'In-presence', user: user6)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606416564/SURVIVORS_12_qlxwza.jpg')
yoga2.image.attach(io: file, filename: 'yoga2.jpg', content_type: 'image/jpg')
yoga2.save



talk2 = Activity.create!(name: 'How to help a friend who is being abused', description: "Whether you suspect that a friend or family member is being abused or you witnessed someone being abused, you can take steps to help. Knowing or thinking that someone you care about is in a violent relationship can be very hard. You may fear for her safety — and maybe for good reason. You may want to rescue her or insist she leave, but every adult must make her own decisions. Each situation is different, and the people involved are all different too. We will discuss some ways to help a loved one who is being abused.", address: 'Templiner Str. 7, 10119 Berlin', start_at: DateTime.new(2020,12,6,19,0), end_at: DateTime.new(2020,12,6,21,30), category: 'Talk', presence: 'In-presence', user: user7)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606416563/SURVIVORS_18_gfg5hl.jpg')
talk2.image.attach(io: file, filename: 'talk2.jpg', content_type: 'image/jpg')
talk2.save



therapy1 = Activity.create!(name: 'Support group for victims of abuse', description: "This group offers support for survivors of domestic and sexual assault. The purpose of the education classes is to create an understanding of the dynamics of domestic violence, to look at the self-esteem, self-confidence of victims, and to help victims realize that the abuse is not their fault. In addition, victims can learn about various community resources that can offer assistance and support with issues related to domestic violence. It is a place where victims/survivors can share their inner feelings with others that are going through the same experiences. Survivors lean on each other for support, advice, guidance and encouragement.", address: 'Frankfurter Tor 5, 10243 Berlin', start_at: DateTime.new(2020,12,8,19,0), end_at: DateTime.new(2020,12,8,21,30), category: 'Group therapy', presence: 'In-presence', user: user5)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606416563/SURVIVORS_16_xbo6th.jpg')
therapy1.image.attach(io: file, filename: 'therapy1.jpg', content_type: 'image/jpg')
therapy1.save


talk4 = Activity.create!(name: 'Transcending trauma', description: "This workshop examines trauma from a new and encouraging perspective—suggesting that post-traumatic growth (PTG) and even thriving are possible after experiencing painful events. When bad things happen, it can take a while to get over the pain and feel safe again. But with these self-help strategies and support, you can speed up your recovery. Emotional and psychological trauma is the result of extraordinarily stressful events that shatter your sense of security, making you feel helpless in a dangerous world. Psychological trauma can leave you struggling with upsetting emotions, memories, and anxiety that won’t go away. It can also leave you feeling numb, disconnected, and unable to trust other people.", address: 'Tempelhofer Ufer 25, 10963 Berlin', start_at: DateTime.new(2020,12,10,19,30), end_at: DateTime.new(2020,12,10,21,30), category: 'Workshop', presence: 'In-presence', user: user10)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606416563/SURVIVORS_19_poxagr.jpg')
talk4.image.attach(io: file, filename: 'talk4.jpg', content_type: 'image/jpg')
talk4.save


music = Activity.create!(name: 'Music, rhythm and trauma', description: "Recent theorizing about the connection between the brain and trauma has led to a burgeoning of interest in the provision of music-based programs with people who have had adverse experiences. Having systematically disentangled the various dimensions, we then constructed a spectrum of approaches that offers a logical categorization of four different ways of using music with people who have had adverse life experiences. These included using music for stabilizing, entrainment, expressive and performative purposes. Specific music-based methods were proposed for those associated with brain-based rationales, and more responsive, multi-method approaches were congruent with recovery and social change models. Come try one of our sessions!", address: 'Goebenstraße 16, 10783 Berlin', start_at: DateTime.new(2020,12,8,19,30), end_at: DateTime.new(2020,12,8,21,30), category: 'Music', presence: 'In-presence', user: user10)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606666590/Untitled_design_24_gsoie1.jpg')
music.image.attach(io: file, filename: 'music.jpg', content_type: 'image/jpg')
music.save


meditation = Activity.create!(name: 'Guided meditation', description: "Overcome anxiety and guide your body to heal itself. Meditation isn’t always about emptying the mind and focusing on the breath alone. This form of meditation is generally known as passive meditation. While it is a good idea to train oneself in passive meditation to experience more control and deeper relaxation, it is only one form in a basket full of meditative practices. The aim of active meditation isn’t to empty the mind, but instead, to focus on one thing intently for a specified block of time. Active meditation can bring about real and positive change in our lives and in our bodies. It doesn’t matter whether you can only spend a couple of minutes a day or 10 times that amount, you’ll see rewards either way.", address: 'Invalidenstraße 50-51, 10557 Berlin', start_at: DateTime.new(2020,12,10,19,30), end_at: DateTime.new(2020,12,10,21,30), category: 'Meditation', presence: 'Online', user: user8)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606666167/Untitled_design_19_l1teml.jpg')
meditation.image.attach(io: file, filename: 'meditation.jpg', content_type: 'image/jpg')
meditation.save

meditation2 = Activity.create!(name: 'The power of meditation', description: "People struggling with chronic pain or other medical conditions can use healing meditation to feel better in body and spirit. Some report dramatic results from healing meditation, while others simply appreciate the reduction in stress that comes from sitting quietly and focusing the mind. Healing meditation often incorporates visualization techniques. Regular meditation can help relieve stress, improve your ability to focus and lead to a better understanding of your own thought patterns and processes. Some people use meditation to enhance creativity, reduce chronic pain, treat headaches and even improve athletic performance. The best advice for beginners just learning about meditation is to start simple. Quieting your mind for long periods is more difficult than it looks, so just carve out 10 to 20 minutes a day at first. All you'll need is a quiet space where you won't be disturbed.", address: 'Greifswalder Str. 90, 10409 Berlin', start_at: DateTime.new(2020,12,7,19,30), end_at: DateTime.new(2020,12,7,21,30), category: 'Meditation', presence: 'Online', user: user9)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606666102/Untitled_design_18_ndgckd.jpg')
meditation2.image.attach(io: file, filename: 'meditation2.jpg', content_type: 'image/jpg')
meditation2.save



teens = Activity.create!(name: 'Talking with teens about violence', description: "If you suspect your teen may be a victim of abuse, you are the most important resource and advisor for your child. If you need support there are people and resources available to help. Remind your teen that he or she deserves a violence free relationship and that abuse is NEVER appropriate and never their fault. If you think your son or daughter may be controlling, abusive, or violent with his or her partner, tell your child that abuse and violence are not acceptable and that violence will not solve problems. If your teen isn’t ready to openly communicate with you about his or her relationship, let him or her know there are confidential resources and trained individuals available to answer questions and help avoid unhealthy relationships. We will discuss some of these topics during the workshop.", address: 'Storkower Str. 160, 10407 Berlin', start_at: DateTime.new(2020,12,8,19,30), end_at: DateTime.new(2020,12,8,21,30), category: 'Workshop', presence: 'In-presence', user: user3)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606663692/Untitled_design_15_obcoxz.jpg')
teens.image.attach(io: file, filename: 'teens.jpg', content_type: 'image/jpg')
teens.save


meditation3 = Activity.create!(name: 'Emotional healing with meditation', description: "Meditation and mindfulness skills and knowledge are highly beneficial for both emotional healing and also emotional resilience. Using meditation techniques and mindfulness knowledge to provide a ‘rapid response’ tool in moments of need (sadness, depression, worry, anger etc.) and to provide skills to enable them to strengthen their ability to avoid getting swept up and overwhelmed by such emotions in the first place. All of this is possible using meditation and mindfulness skills, which enable us to make life richer and more balanced – even the emotionally challenging moments!", address: 'Meinekestraße 22, 10719 Berlin', start_at: DateTime.new(2020,12,9,19,30), end_at: DateTime.new(2020,12,9,21,30), category: 'Meditation', presence: 'Online', user: user3)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606666168/Untitled_design_20_y1fwsm.jpg')
meditation3.image.attach(io: file, filename: 'meditation3.jpg', content_type: 'image/jpg')
meditation3.save


protest = Activity.create!(name: 'Elimination of violence against women', description: "Violence against women and girls (VAWG) is one of the most widespread, persistent and devastating human rights violations in our world today remains largely unreported due to the impunity, silence, stigma and shame surrounding it. Violence against women continues to be an obstacle to achieving equality, development, peace as well as to the fulfillment of women and girls’ human rights. We must eliminate violence against women. Come join us in the streets!", address: 'Alexanderstraße 9, 10178 Berlin', start_at: DateTime.new(2020,12,6,19,30), end_at: DateTime.new(2020,12,6,21,30), category: 'Protest', presence: 'In-presence', user: user3)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606663466/Untitled_design_10_g70g29.jpg')
protest.image.attach(io: file, filename: 'protest.jpg', content_type: 'image/jpg')
protest.save


com = Activity.create!(name: 'Building a community', description: "By joining our community, you can connect with others with similar experiences, and support each other on this unique path. Come meet us!", address: 'Storkower Str. 135, 10407 Berlin', start_at: DateTime.new(2020,12,11,19,30), end_at: DateTime.new(2020,12,11,21,30), category: 'Group therapy', presence: 'In-presence', user: user13)

file = URI.open('https://res.cloudinary.com/dylgxsntq/image/upload/v1606663543/Untitled_design_5_sojbng.jpg')
com.image.attach(io: file, filename: 'com.jpg', content_type: 'image/jpg')
com.save



puts 'Activities created'



puts 'Creating bookings'

booking1 = Booking.create(user: user6, activity: yoga1)
booking2 = Booking.create(user: user1, activity: dance_movement)
booking3 = Booking.create(user: user5, activity: painting)
booking4 = Booking.create(user: user2, activity: yoga1)
booking5 = Booking.create(user: user3, activity: yoga1)
booking6 = Booking.create(user: user1, activity: meditation2)
booking7 = Booking.create(user: user1, activity: therapy1)
booking8 = Booking.create(user: user1, activity: talk4)

puts 'Bookings created'



puts 'Creating reviews'

review1 = Review.create(user: user10, activity: yoga1, description:'Comforted. Supported. Beautiful community of women healing together.', rating: 5)
review2 = Review.create(user: user13, activity: yoga1, description:'The best yoga session of my life. Highly recommended!', rating: 5)
review3 = Review.create(user: user12, activity: yoga1, description:'Beautiful healing session where I could really reconnect with my body.', rating: 4)
review7 = Review.create(user: user5, activity: yoga1, description:'Everyone is so wonderful and supportive. I love it!', rating: 5)
review8 = Review.create(user: user4, activity: yoga1, description:'Healing Yoga has done a lot for me in a few weeks. Staff is great and the classes never the same', rating: 5)
review9 = Review.create(user: user9, activity: yoga1, description:'I was nervous but the knowledgeable and compassionate teachers gave me the tools and encouragement I needed to develop a yoga practice that has helped me heal and regain my strength. I look forward to every class!', rating: 5)
review10 = Review.create(user: user8, activity: yoga1, description:'This studio is fantastic! It has a great vibe and all the instructors are knowledgeable, as well as really care about guiding the participants in their classes.', rating: 5)
review14 = Review.create(user: user7, activity: yoga1, description:'Such a great place to heal and meet people. I always leave feeling calm and positive.', rating: 5)

review11 = Review.create(user: user7, activity: defense, description:'This is a great space. The staff and owners are very caring. They offer great classes and give a sense of acceptance so that you feel free to try things outside of your comfort zone. And isn’t that the best way to grow!', rating: 4)
review12 = Review.create(user: user11, activity: defense, description:'They really make you feel like you are part of a tribe: supportive, loving, respectful, encouraging. I really needed this in my life and will soon be going back.', rating: 5)
review13 = Review.create(user: user5, activity: defense, description:'My first class was amazing! This is exactly what I needed!', rating: 5)
review15 = Review.create(user: user10, activity: defense, description:'I feel so much more confident walking at night now that I know how to defend myself. Susie was an incredibly knowledgeable and supportive teacher, and the class was so much fun!', rating: 5)
review16 = Review.create(user: user14, activity: defense, description:'I would recommend this to any one I know. I primarily wanted to learn self defense to help me develop confidence and boundaries in my daily life, and I am already seeing the payoff.', rating: 5)
review4 = Review.create(user: user2, activity: defense, description:'The best part of Pretty Deadly Self Defense this is having found a community of women helping each other.', rating: 5)
review5 = Review.create(user: user13, activity: defense, description:'I finally feel more confident and secure in my daily life. It is an impressive class!', rating: 5)

review21 = Review.create(user: user2, activity: kundalini, description:"I love this class! I now do yoga multiple times per week and feel a greater connection between my mind and body.", rating: 4)
review22 = Review.create(user: user14, activity: kundalini, description:"Amazing experience! I totally recommend it!", rating: 4)
review23 = Review.create(user: user8, activity: kundalini, description:"Such a great place to heal and meet people. I always leave feeling calm and positive.", rating: 5)
review24 = Review.create(user: user9, activity: kundalini, description:"I have finally found the community of women that I needed. Thanks a lot for this space!", rating: 5)
review25 = Review.create(user: user10, activity: kundalini, description:"Beautiful group of people helping each other heal and recover from trauma.", rating: 4)
review6 = Review.create(user: user3, activity: kundalini, description:'Relaxed, down to earth and welcoming. Class was challenging but with different options to suit different people.', rating: 5)

review17 = Review.create(user: user6, activity: art, description:'Practical use of art to bring emotional healing. It is really helping me!', rating: 5)
review18 = Review.create(user: user9, activity: art, description:"It's really helping me express emotions that I've been holding onto for a long time. I really recommend it!", rating: 2)
review19 = Review.create(user: user2, activity: art, description:"Such an amazing and helpful experience. I am definitely doing it again.", rating: 5)
review20 = Review.create(user: user4, activity: art, description:"Beautiful group of people helping each other heal and recover from trauma. Art definitely helps. Thank you!", rating: 5)
review26 = Review.create(user: user13, activity: art, description:"I really needed something like this! Painting is a powerful way to express emotions.", rating: 5)
review27 = Review.create(user: user5, activity: art, description:"This class is really helpimg me build a community and recover from trauma.", rating: 5)
review28 = Review.create(user: user14, activity: art, description:"I have been feeling better since I started this class. Thanks for everything!", rating: 4)

review29 = Review.create(user: user2, activity: cook, description:"I have been feeling better since I started this class. Thanks for everything!", rating: 3)

review30 = Review.create(user: user3, activity: yoga2, description:"I have been feeling better since I started this class. Thanks for everything!", rating: 5)
review34 = Review.create(user: user8, activity: yoga2, description:'This studio is fantastic! It has a great vibe and all the instructors are knowledgeable, as well as really care about guiding the participants in their classes.', rating: 4)
review35 = Review.create(user: user9, activity: yoga2, description:"I love this class! I now do yoga multiple times per week and feel a greater connection between my mind and body.", rating: 4)

review31 = Review.create(user: user4, activity: self_def, description:"I have been feeling better since I started this class. Thanks for everything!", rating: 5)
review50 = Review.create(user: user11, activity: self_def, description:"I learned a lot about how to think more intuitively about defending my own space.", rating: 4)
review51 = Review.create(user: user2, activity: self_def, description:"Not only did it open my eyes to a whole new world, it also helped me understand I am already defending myself everyday in so many little ways.", rating: 3)
review55 = Review.create(user: user8, activity: self_def, description:"Today I was verbally attacked by a man on the bus. I was surprised at how good I managed the conflict and stayed calm and de escalated.", rating: 4)

review32 = Review.create(user: user5, activity: talk2, description:"Very helpful talk!", rating: 5)

review33 = Review.create(user: user6, activity: therapy1, description:"I really needed something like this! I feel so empowered!", rating: 5)
review57 = Review.create(user: user12, activity: therapy1, description:"Beautiful people. Thank you very much for your support!", rating: 4)
review58 = Review.create(user: user9, activity: therapy1, description:"Best support group I have ever attented. I am definitely coming back.", rating: 4)

review36 = Review.create(user: user5, activity: transformative_dance, description:"I love this class! I now do it multiple times per week and feel a greater connection between my mind and body.", rating: 4)
review37 = Review.create(user: user10, activity: transformative_dance, description:"Beautiful group of people helping each other heal and recover from trauma. Dance definitely helps. Thank you!", rating: 5)
review54 = Review.create(user: user12, activity: transformative_dance, description:"Really love the creativity behind how it's taught and it's inspiring for my own work. But also like that I've got sweet moves. It's been nice chatting with the other ladies, too. We keep bonding each week.", rating: 5)

review38 = Review.create(user: user7, activity: lotus_dance, description:"Thank you so much for this space!", rating: 4)
review39 = Review.create(user: user2, activity: lotus_dance, description:"Thanks to this class I finally feel free and confident. The teacher is so powerful!", rating: 3)
review41 = Review.create(user: user10, activity: lotus_dance, description:"I really needed something like this! I feel so empowered!", rating: 5)
review52 = Review.create(user: user11, activity: lotus_dance, description:"What a fun way to build confidence! The moves were so natural! Can't wait to take the next course level.", rating: 5)

review42 = Review.create(user: user8, activity: talk1, description:"I totally recommend it. Amazing talk!", rating: 5)
review43 = Review.create(user: user6, activity: talk1, description:"A lot of very important and helpful information. I am glad I went. Thank you again!", rating: 5)

review44 = Review.create(user: user10, activity: talk4, description:"A lot of very important and helpful information. I am glad I went. Thank you again!", rating: 4)
review56 = Review.create(user: user4, activity: talk4, description:"In addition to learning about different tools to continue on the long road of recovery from trauma, I found a beautiful community of women who are on the same road as me.", rating: 4)
review6 = Review.create(user: user7, activity: talk4, description:"I loved this workshop. Very useful and satisfactory. I will definitely invite my best friend for the next one.", rating: 5)
review12 = Review.create(user: user13, activity: talk4, description:"Amazing talk and beautiful people. Thank you very much for your support!", rating: 4)
review59 = Review.create(user: user14, activity: talk4, description:"I don't know how to explain how this workshop has helped me. Very fulfilling and empowering!", rating: 4)

puts 'Reviews created'


puts 'Creating questions'

question1 = Question.create!(title: "How can I help someone close to me who is in an abusive relationship?", question: "My older sister is in an abusive relationship. She wants to get out of it but she is very scared because the guy is threatening her. What can we do? What support centers exist in Berlin?", user: user12)

question2 = Question.create!(title: "What kind of activities do you recommend to get started in the process of recovery from trauma?", question: "Hi! I am new to this platform. I still have a hard time talking about what happened to me but I am learning to open up about my emotions and want to try different alternatives. What activities do you recommend me to start with?", user: user11)

question3 = Question.create!(title: "I was sexually assaulted 2 days ago, what should I do now? I don't speak any German, where can I get help in English?", user: user9)

question4 = Question.create!(title: "I think my friend is in an abusive relationship. Suggestions for me to approach her and talk?", user: user8)

question5 = Question.create!(title: "I don't like yoga very much, what other activities do you recommend to connect with my body and meet people who have been through a similar experience?", user: user13)

question6 = Question.create!(title: "Hi! Do you know any support groups in Spanish or Portuguese?", user: user10)

question7 = Question.create!(title: "Hello everyone! Do you have any book recommendations on how to recover from trauma?", user: user8)

question8 = Question.create!(title: "Where can I get some legal advice in English? Which centers or organizations to help women exist in Berlin?", user: user14)

question9 = Question.create!(title: "I would like to talk to someone about what's happening to me. Please recommend me an organization where I can speak Spanish.", user: user7)

puts 'Questions created'



puts 'Creating answers'

answer1 = Answer.create!(answer: "If you think that a friend or someone you know is in an abusive or unhealthy relationship, it can be difficult to know what to do. You may want to help, but be scared to lose them as a friend or feel as though it is not your place to step in. Find time to talk to your friend one-on-one in a private setting. Listen to your friend and let them open up about the situation on their own terms. Don’t be forceful with the conversation. It may be very hard for your friend to talk about their relationship, but remind them that they are not alone and that you want to help. The focus of the conversation should be on the unhealthy behaviors in the relationship and to provide your friend with a safe space to talk about it. The best way for you to help your friend is to offer them options. Depending on how ready your friend is to open up, they may feel more comfortable vetting the situation with someone anonymously over the phone, or they may want to have the conversation in person with someone who can help.", question: question4, user: user11)

answer2 = Answer.create!(answer: "Hey! If your friend is in immediate danger, you should alert authorities right away. Relationship abuse can be fatal and you should not hesitate to take serious action if you think that anyone is at risk for physical or sexual harm.", question: question1, user: user2)

answer3 = Answer.create!(answer: "Hey! If your friend is in immediate danger, you should alert authorities right away. Relationship abuse can be fatal and you should not hesitate to take serious action if you think that anyone is at risk for physical or sexual harm.", question: question4, user: user2)

answer4 = Answer.create!(answer: "In Berlin you can go to Frauen für Frauen. They offer help and support to women.", question: question3, user: user13)

answer5 = Answer.create!(answer: "Try the protection from violence national telephone helpline for violence against women – 08000 116 016.", question: question3, user: user8)

answer6 = Answer.create!(answer: "Hi there! You can find some information in the following website: www.berlin-info.de", question: question3, user: user14)

answer7 = Answer.create!(answer: "Hello! You can also check out this PDF document. It is all in English: https://www.big-berlin.info/sites/default/files/medien/330_ihr_recht_eng_2017_0.pdf. You can find a lot uf useful information about domestic violence and violence against women.", question: question3, user: user5)

answer8 = Answer.create!(answer: "Hey! You can contact the organization Xochicuicatl e.V. Lateinamerikanischer Frauenverein. Here is their webpage: https://www.xochicuicatl.de/language/de/home/. You can look for them in Facebook as well. They speak Spanish and Portuguese.", question: question9, user: user12)

answer9 = Answer.create!(answer: "¡Hola! Puedes contactar a la Alianza de feministas internacionalistas. Ellas tienen mucha información al respecto. Búscalas en Facebook. ¡Abrazo fuerte y mucha fuerza!", question: question9, user: user13)


puts 'Answers created'



