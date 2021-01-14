# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create!(first_name: "Deborah", last_name: "Lee", email: "dlee@mail.com", address: "666 First Street", phone_number: "443-777-0000", phone_type: "cell", password: "1234")
user = User.create!(first_name: "Willy", last_name: "Robinson", email: "wrob@mail.com", address: "12 Main Street", phone_number: "443-770-6666", phone_type: "cell", password: "1234")



Shoe.create!(
   [{
    name: "Jordan 1 Retro High Satin Snake Chicago", 
    brand: "Nike", 
    price: 170, 
    product_detail: "N/A", 
    release_date: "August 06, 2020"
   }, 
   {
    name: "Reebok Question", 
    brand: "Reebok", 
    price: 150, 
    product_detail: "N/A", 
    release_date: "July 31, 2020"
   }]
   
   )

Raffle.create!(
    [{
        title: "Jordan 1 Retro High Satin Snake Chicago", 
        content: "The Jordan 1 Retro High Satin Snake Chicago (W) is slated to release on August 6th. This women's exclusive AJ 1 will hit retailers' shelves for a sticker price of $170", 
        date: "August 06, 2020", 
        open: "false", 
        tickets: "1"
        user_id: user.id, 
        shoe_id: shoe.id
        },
   {    title: "Reebok Question Mid Eric Emanuel Pink Toe",
        content: "The Reebok Question Mid Eric Emanuel Pink Toe has finally arrived and is ready to hit shelves. The pair will touch down on July 31st at a retail price of $150",
        date: "July 31, 2020",
        open: "true",
        tickets: "2"
        user_id: user.id, 
        shoe_id: shoe.id
       }]
       )



 
 