# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create!(first_name: "Deborah", last_name: "Lee", email: "dlee@mail.com", password: "1234")
user = User.create!(first_name: "Willy", last_name: "Robinson", email: "wrob@mail.com", password: "1234")



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
        user_id: user.id, 
        shoe_id: shoe.id
        },
   {    title: "Reebok Question Mid Eric Emanuel Pink Toe",
        content: "The Reebok Question Mid Eric Emanuel Pink Toe has finally arrived and is ready to hit shelves. The pair will touch down on July 31st at a retail price of $150",
        date: "July 31, 2020",
        open: "true",
        user_id: user.id, 
        shoe_id: shoe.id
       }]
       )


Entry.create!(name: "Deborah Lee", email: "dlee@mail.com", address: "111 Main Street Salisbury, Maryland 21826", phone_number: "443-123-0123", phone_type: "mobile", date_entered: "August 05, 2020", user_id: user.id, raffle_id: raffle.id)
Entry.create!(name: "Willy Robinson", email: "wrob@mail.com", address: "60 Camden Avenue, Charolette, North Carolina 08725", phone_number: "123-456-7890", phone_type: "mobile", date_entered: "July 30, 2020", user_id: user.id, raffle_id: raffle.id)    

 
 