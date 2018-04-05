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



Image.create!(name: "mushroom", url: "https://image.ibb.co/btaaCH/000dc541fbaaf49d5e2b8bf642c10cf5.png" )
Image.create!(name: "mario", url: "https://image.ibb.co/hzPrmc/2d5a24a09deadd2.png")
Image.create!(name: "cat", url: "https://image.ibb.co/dfzVex/69846b63f30796d.png" )
Image.create!(name: "sonic", url: "https://preview.ibb.co/b3vQCH/b767169e4d0f5f0845283dd63ee3a4e749349573.png" )
Image.create!(name: "link", url: "https://preview.ibb.co/cKhizx/f517e09af9b5f97.png" )
Image.create!(name: "heart", url: "https://image.ibb.co/i3z7Rc/heart_pixel_art_254x254.png" )
Image.create!(name: "x", url: "https://image.ibb.co/dodLCH/unnamed.png" )



Category.create!(title: "to-do")
Category.create!(title: "art")
Category.create!(title: "jobs")
Category.create!(title: "comics")
Category.create!(title: "travel")
Category.create!(title: "home-work")
