class WorldsTopYogaStudios::Scraper
  
  def get_page
    doc = Nokogiri::HTML(open("https://www.manduka.com/yoga-mats.html"))
  end
  
  def scrape_studios_index
    self.get_page.css("li.col-sm-4 col-xs-6 item")
  end
  
end