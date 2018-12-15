class WorldsTopYogaStudios::Studio
  
  attr_accessor :name, :location, :url
  
  def self.studios
    
    studio_1 = self.new
    studio_1.name = "Amrita Yoga and Wellness"
    studio_1.location = "Philadelphia, Pennsylvania"
    studio_1.url = "mritayogawellness.com"
    
    studio_2 = self.new
    studio_2.name = "GRRRRRRant"
    studio_2.location = "YOOO"
    studio_2.url = "WHY>"
    
    [studio_1, studio_2]
  end
  
  
end