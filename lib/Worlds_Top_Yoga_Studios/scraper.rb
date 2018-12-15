class WorldsTopYogaStudios::Scraper

  
  def self.scrape_studios_index
    doc = Nokogiri::HTML(open("https://www.manduka.com/yoga-mats.html"))
    
    doc.css("li.col-sm-4 col-xs-6.item.first").css("h2.product-name").text
    binding.pry
  end
  
end