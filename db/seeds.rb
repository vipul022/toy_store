# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding the database"
3.times do
  user = User.create(
    email: Faker::Internet.email,
    password: Faker::Number.number(digits: 10)
  )
  2.times do
    user.toys.create(
      name: Faker::FunnyName.name
    )
  end


end
puts "all done"