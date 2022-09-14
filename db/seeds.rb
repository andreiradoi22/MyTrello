# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({
    username: "user1",
    password: "user1pass",
    email: "user1@yahoo.com"
})

User.create({
    username: "user2",
    password: "user2pass",
    email: "user2@yahoo.com"
})
