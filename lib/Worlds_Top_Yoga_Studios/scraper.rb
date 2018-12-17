class WorldsTopYogaStudios::Scraper

  
  def self.scrape_studios_index
    doc = Nokogiri::HTML(open("https://www.yogiapproved.com/travel/9-uniquely-beautiful-yoga-studios-around-the-world/"))
    
    doc.css("div#content-area").text #is the area that contains all of the data we want to scrape.
    
    #name_of_studio = doc.css("div#content-area").css("h3").first.text
    #location_of_studio = doc.css("div#content-area").css("p em").first.text
    #studio_url = doc.css("div#content-area").css("p a").attribute("href").value
    #bio = "Amrita Yoga features skylights in every classroom, as well as an indoor waterfall, and roaring fireplaces. The atmosphere is very welcoming, and clean. In addition to a broad range of yoga and pilates classes, Amrita also offers massages within this beautiful space."
    
    binding.pry
  end
  
  def make_studios
    WorldsTopYogaStudios::Studio.new_from_index_page. |s|
  end
  
end