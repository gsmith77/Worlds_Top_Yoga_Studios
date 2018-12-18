class WorldsTopYogaStudios::Studio
  
  attr_accessor :name, :location, :url
  
  def self.all
    self.scrape_index_page
  end
  
  def self.scrape_index_page
    doc = Nokogiri::HTML(open("https://www.yogiapproved.com/travel/9-uniquely-beautiful-yoga-studios-around-the-world/"))
    
    studio = self.new
    s = doc.css("div#content-area p")
    studio.name = s.css("h3").text
    studio.location = s.css("p em").text
    studio.url = s.css("p a").attribute("href").value
  end
 
  #def self.studios
    list_of_studios = []
    
    #studio_1 = self.new
    #studio_1.name = "Amrita Yoga and Wellness"
    #studio_1.location = "Philadelphia, Pennsylvania"
    #studio_1.url = "mritayogawellness.com"
    
    #studio_2 = self.new
    #studio_2.name = "GRRRRRRant"
    #studio_2.location = "YOOO"
    #studio_2.url = "WHY>"
    
    list_of_studios
  #end
  
  
end