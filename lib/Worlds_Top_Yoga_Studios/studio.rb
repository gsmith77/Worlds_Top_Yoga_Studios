class WorldsTopYogaStudios::Studio
  
  attr_accessor :name, :location, :url
  
  def self.all
    self.scrape_index_page
  end
  
  def self.scrape_index_page
    yogas = []
    doc = Nokogiri::HTML(open("https://www.yogiapproved.com/travel/9-uniquely-beautiful-yoga-studios-around-the-world/"))
    s = doc.css("div#content-area")
    s.each do |studios|
    studio = self.new
    studio.name = studios.css("h3").text
    studio.location = studios.css("p em").text
    studio.url = studios.css("p a").text
    yogas << studio
  end
    yogas
    binding.pry
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