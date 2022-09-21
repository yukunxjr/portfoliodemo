# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |n|
    LevelSetting.create!(
      level: 1 + n,
      thresold: 100 * n
    )
  end

  30.times do |n|
    User.create!(
      email: "test#{n + 1}@test.com",
      name: "テスト太郎#{n + 1}",
      password: "test#{n + 1}test",
      encrypted_password: "test#{n + 1}test",
      level: "#{n + 1}",
      exp: "#{n + 100}",
    )
  end