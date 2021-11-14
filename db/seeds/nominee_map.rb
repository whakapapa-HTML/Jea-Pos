
  Faker::Number.between(from: 40, to: 50).times do |n|
    NomineeMap.create!(
      nominee_id: Faker::Number.between(from: 1, to: 5),
      jeans_id: Faker::Number.between(from: 1, to: 10),
      user_id: Faker::Number.between(from: 1, to: 10)
    )
  end

