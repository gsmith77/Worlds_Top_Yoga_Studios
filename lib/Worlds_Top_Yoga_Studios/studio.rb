class WorldsTopYogaStudios::Studio
  
  attr_accessor :name, :paragraph
  
  
  #def self.studio_names
   # yogas = []
    #doc = Nokogiri::HTML(open("https://fitt.co/austin/incredible-studios-practice-yoga-austin/"))
   # s = doc.css("div.item-single__list").css("h2.h2.list-loop__title")
   
    #s.map do |studios|
      # studio = self.new
     #  studio.name = studios.text
    #  yogas << studio
   # end
  #end
  
  def self.fix_it_all
    yogas = []
    doc = Nokogiri::HTML(open("https://fitt.co/austin/incredible-studios-practice-yoga-austin/"))
    s = doc.css("div.l-container.l-weighted-left.single-post-container")
    s.each do |studios|
      studio = self.new
   
      studio.name = studios.css("h2.h2.list-loop__title").text
      studio.paragraph = studios.css("div.list-loop__description.t-content p").text
      yogas << studio
    end
    yogas
  end
  
  #def self.paragraphs
    #all = []
    #doc = Nokogiri::HTML(open("https://fitt.co/austin/incredible-studios-practice-yoga-austin/"))
    
     #s = doc.css("div.list-loop__description.t-content p")
     #s.map do |p|
       
       #all << p.text
     #end
     #all
    
  #end
  
  #def self.flatten
    #all = []
    #all << self.paragraphs + self.studio_names
   # all.flatten
  #end
 
  def self.all
    self.fix_it_all
  end
  
  
end