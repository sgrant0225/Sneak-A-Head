# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# user = User.create!(first_name: "Deborah", last_name: "Lee", email: "dlee@mail.com", address: "666 First Street", phone_number: "443-777-0000", phone_type: "cell", password: "1234")
# user = User.create!(first_name: "Willy", last_name: "Robinson", email: "wrob@mail.com", address: "12 Main Street", phone_number: "443-770-6666", phone_type: "cell", password: "1234")



Shoe.create!(
   [{
    image: "https://gcs.justfreshkicks.com/2020/07/d36803e0-71ed946e-581a-43a3-b7f0-40667a00b1fa.png",
    name: "Jordan 1 Retro High Satin Snake Chicago",  
    release_date: "August 06, 2020",
    price: $170, 
   },
   {
      image: "https://3app.kicksonfire.com/kofapp/upload/events_master_images/iphone_nike-zoom-freak-2-letter-bro.jpg",
      name: "Nike Freak 2 Letter Bro",
      release_date: "January 22,2021",
      price: "$120"
    },
    {
        image: "https://3app.kicksonfire.com/kofapp/upload/events_master_images/iphone_jordan-delta-mid-storm-blue.jpg",
        name: "Jordan Delta Mid Storm Blue",
        release_date: "January 22,2021",
        price: "$160"
      },
      {
        image: "https://3app.kicksonfire.com/kofapp/upload/events_master_images/iphone_nike-air-max-1-lv8-obsidian.jpg",
        name: "Nike Air Max 1 LV8 Obsidian",
        release_date: "January 22,2021",
        price: "$150"
      },
      {
        image: "https://4app.kicksonfire.com/kofapp/upload/events_master_images/thumb_ipad_air-jordan-4-wmns-starfish.jpg",
        name: "Air Jordan 4 WMNS Starfish",
        release_date: "January 22,2021",
        price: "$200"
      },
      {
        image: "https://4app.kicksonfire.com/kofapp/upload/events_master_images/thumb_ipad_nike-wmns-air-force-1-pixel-sail-snake.png",
        name: "Nike WMNS Air Force 1 Pixel Sail Snake",
        release_date: "January 22,2021",
        price: "$110"
      },
      {
        image: "https://www.kicksonfire.com/wp-content/uploads/2021/01/adidas-Yeezy-Boost-700-Sun-8-600x388.jpg",
        name: "adidas Yeezy Boost 700 Sun",
        release_date: "January 23,2021",
        price: "$240"
      },
      {
        image: "https://www.kicksonfire.com/wp-content/uploads/2021/01/Nike-Air-Max-90-2-5-600x388.jpg",
        name: "Nike Air Max 90 Light Violet",
        release_date: "January 23,2021",
        price: "$120"
      },
   {
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtNUoPqTXhRnB_Y3MmOGYllpn9oHXoJtQ0K4P9NR0tKA1905kJV0EsD9QevagT9rUg0jtNXg6Y&usqp=CAc",
    name: "Reebok Question",  
    release_date: "July 31, 2020",
    price: $150, 
   }]
      )

# Raffle.create!(
#     [{
#         title: "Jordan 1 Retro High Satin Snake Chicago",  
#         date: "August 06, 2020", 
#         user_id: "1", 
#         shoe_id: "1"
#         },
#    {    title: "Reebok Question Mid Eric Emanuel Pink Toe",
#         date: "July 31, 2020",
#         user_id: "2",
#         shoe_id: "2"
#        }]
#        )



 
 