# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Weight.destroy_all
Food.destroy_all

Weight.create(amount: 50, user_id: 1, date: Time.now, comment: "first comment")
Weight.create(amount: 60, user_id: 1, date: Time.now, comment: "second comment")
Weight.create(amount: 70, user_id: 1, date: Time.now, comment: "third comment")

Food.create(name: "first food", image: "", calories: 150)
Food.create(name: "second food", image: "", calories: 250)
Food.create(name: "third food", image: "", calories: 350)