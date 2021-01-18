require 'nokogiri'
require 'open-uri'
require 'pry'
class ShoeScraper

def sneaker_scraper

  doc = Nokogiri::HTML(open("https://launches.endclothing.com/"))
  binding.pry
  
   
end 

end