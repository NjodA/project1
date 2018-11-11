# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

njod = User.create(name: "Njod", email: "njod@gmail.com", password: "112233", password_confirmation: "112233")


Weight.destroy_all

Food.destroy_all
Food.create(name: "omelette with avocado", image: "https://www.wellandgood.com/wp-content/uploads/2018/06/Facebook-@BeWellByDrFrankLipman.jpg", calories: 150, user_id: njod.id)
Food.create(name: "Broccoli salad", image: "https://www.nia.nih.gov/sites/default/files/inline-images/roadblocks-healthy-eating-inline.jpg", calories: 250,user_id: njod.id )
Food.create(name: "Rice with vegetables", image: "https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2F4_3_horizontal_-_1200x900%2Fpublic%2F1513274590%2Fparslied-brown-rice-pilaf-1801-ck.jpg%3Fitok%3D8GULolrO&w=1000&h=556&c=sc&poi=face&q=70", calories: 150, user_id: njod.id)

Exercise.destroy_all

Exercise.create(name:"Running", minute:30, user_id: njod.id)
Exercise.create(name:"Cycling", minute:45, user_id: njod.id)
Exercise.create(name:"Dancing", minute:20, user_id: njod.id)



