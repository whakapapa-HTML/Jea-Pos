
User.create!([
               { email: 'sample1@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/feet-g15cd16c54_640.jpg")},
               { email: 'sample2@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/academy-award-5504949_640.jpg")},
               { email: 'sample3@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/mateus-campos-felipe-bWp6UhjOcBg-unsplash.jpg")},
               { email: 'sample4@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/girl-g735567eb5_640.jpg")},
               { email: 'sample5@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/ラーメンのアイコン。.png")},
               { email: 'sample6@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/mateus-campos-felipe-bWp6UhjOcBg-unsplash.jpg")},
               { email: 'sample7@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/しろ-removebg-preview.png")},
               { email: 'sample8@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/ラーメンのアイコン。.png")},
               { email: 'sample9@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/mateus-campos-felipe-bWp6UhjOcBg-unsplash.jpg")},
               { email: 'sample10@mail.com', password: 'password', name: Faker::Name.name, introduction: Faker::Lorem.sentence, image: open("#{Rails.root}/db/fixtures/しろ-removebg-preview.png")}
             ])
