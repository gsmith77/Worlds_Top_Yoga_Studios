class AustinsTopYogaStudios::Scraper

  def self.scraper
    doc = Nokogiri::HTML(open("https://fitt.co/austin/incredible-studios-practice-yoga-austin/"))
    s = doc.css("li.list-loop__item")
    s.collect do |studios|
      studio = {}
      studio[:name] = studios.css("h2.h2.list-loop__title").text
      studio[:paragraph] = studios.css("div.list-loop__description.t-content").text.strip
      studio
    end
  end

end
