class WorldsTopYogaStudios::Studio
  
  attr_accessor :name, :paragraph

  
  def self.fix_it_all
    yogas = []
    doc = Nokogiri::HTML(open("https://fitt.co/austin/incredible-studios-practice-yoga-austin/"))
    s = doc.css("li.list-loop__item")
    s.each do |studios|
      studio = self.new
      studio.name = studios.css("h2.h2.list-loop__title").text
      studio.paragraph = studios.css("div.list-loop__description.t-content").text.strip
      yogas << studio
    end
    yogas
  end
  
  
  def self.all
    self.fix_it_all
  end
  
  
end