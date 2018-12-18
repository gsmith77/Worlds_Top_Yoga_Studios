class WorldsTopYogaStudios::Scraper
  

  
  def scrape_studios_index
    
    self.get_page.css("div#content-area").text #is the area that contains all of the data we want to scrape.
    
    #name = doc.css("div#content-area").css("h3").text
    #location = doc.css("div#content-area").css("p em").text
    #url = doc.css("div#content-area").css("p a").attribute("href").value
  end

end