class WorldsTopYogaStudios::Studio
  
  attr_accessor :name, :location, :url
  
  def self.studios
    
    studio_1 = self.new
    studio_1.name = "Amrita Yoga and Wellness"
    studio_1.location = "Philadelphia, Pennsylvania"
    studio_1.url = "mritayogawellness.com"
    
    [studio_1]
  end
  
  
end