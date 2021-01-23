require 'nokogiri'
require 'open-uri'
require 'pry'
require 'json'

  
class ShoeScraper

  def sneaker_scraper

   doc = Nokogiri::HTML(open("https://launches.endclothing.com/"))
    shoe_array = []
     arr = {}
     arr[:image] = doc.css('img').last.attribute('src').value #images
      doc.css('div.ProductList__ProductListSC-sc-16hum31-0.msDhF').each do |list|
       arr[:name] = list.css('div.ProductCard__ProductNameSC-sc-1dh591-4.sQmxT').first.text.split("[")[0].strip #name
       arr[:release_date] = list.css('span.ProductCard__ReleaseDateSC-sc-1dh591-3.kGSsJZ').first.text #date
       arr[:price] = list.css('span.ProductCard__ProductDetailsSC-sc-1dh591-5.jCdDFH').first.children.last.text
       
    
       shoe_array << arr
       
     end 
      
      File.write('shoes.json', shoe_array.to_json)
  end 
  
  
end

   
#scrape = ShoeScraper.new.sneaker_scraper

ShoeScraper.new.sneaker_scraper


