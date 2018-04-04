# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name:  "admin",
             email: "kylesallette@gmail.com",
             password:              "red",
             role: 1)



Image.create!(name: "sun", url: "https://image.ibb.co/eFnVux/images_1.jpg" )
Image.create!(name: "neon-car", url: "https://image.ibb.co/jJGqux/images_3.jpg")
Image.create!(name: "cat", url: "https://image.ibb.co/gUztEx/images_4.jpg" )
Image.create!(name: "tv-watching", url: "https://image.ibb.co/nAQ0ux/images_5.jpg" )
Image.create!(name: "man-sunset", url: "https://image.ibb.co/gBcVux/images.jpg" )



Category.create!(title: "to-do")
Category.create!(title: "art")
Category.create!(title: "jobs")
Category.create!(title: "comics")
Category.create!(title: "travel")
Category.create!(title: "home-work")
