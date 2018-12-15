class WorldsTopYogaStudios::Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("https://www.yogiapproved.com/travel/9-uniquely-beautiful-yoga-studios-around-the-world/"))
  end
  
  def scrape_studios_index
    self.get_page.css("div.body-text__content")
  end
  
end