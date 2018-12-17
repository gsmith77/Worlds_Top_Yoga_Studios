class WorldsTopYogaStudios::Studio
  
  attr_accessor :name, :location, :url
  
  def self.new_from_index_page(s)
    self.new(s.css("h3").text, s.css("p em").text, s.css("p a").attribute("href").value)
  end
  
  @@all = []
  
  def intialize(name=nil, location=nil, url=nil)
    @name = name
    @location = location
    @url = url
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find(id)
    self.all[id - 1]
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