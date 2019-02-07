# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(admin: true, first_name: "Edaurd", last_name: "Bekir", email: "admin@example.com", password: "111111")
visitor = Visitor.create!(first_name: "Eduard", last_name: "Bekir", email: "edikbekir@gmail.com", password: "123456")

events = [
  Event.create!(start_time: Time.current, name: "ARKPZ"),
  Event.create!(start_time: Time.current, name: "BPID"),
  Event.create!(start_time: Time.current, name: "PP"),
  Event.create!(start_time: Time.current, name: "SOCIAL")
]

user.events << events
visitor.events << events
