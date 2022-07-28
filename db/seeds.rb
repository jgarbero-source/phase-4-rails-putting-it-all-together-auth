# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
    User.create(
        username: Faker::TvShows::RuPaul.queen,
        password_digest: Faker::Verb.base,
        image_url: Faker::Hobby.activity,
        bio: Faker::Job.position
    )
end

10.times do
    Recipe.create(
        title: Faker::TvShows::StrangerThings.quote,
        instructions: Faker::TvShows::RuPaul.quote,
        minutes_to_complete: Faker::Number.digit,
        user_id: User.all.sample.id
    )
end

puts "done seeding!"