#Remove existing shoes from the database
Shoe.destroy_all
Raffle.destroy_all
User.destroy_all

#Instantiate Shoe objects from web scraped json data

JSON.parse(File.read("shoes.json")).each do |shoe_attrs|
    
    Shoe.create(shoe_attrs)
end    

