class AustinsTopYogaStudios::Scraper

  #had to hard code studios due to no separation of each yoga studio having its own
  #id or class for each listed studio.
  def self.scraper
    doc = Nokogiri::HTML(open("https://fitt.co/austin/incredible-studios-practice-yoga-austin/"))
    s = doc.css("div._30298v")
    studios = [{name: s.css("h1._17ii67j5")[0].text.strip,
    paragraph: s.css("p._lao9xi")[2].text.strip},
    {name: s.css("h1._17ii67j5")[1].text.strip,
    paragraph: s.css("p._lao9xi")[3].text.strip},
    {name: s.css("h1._17ii67j5")[2].text.strip,
    paragraph: s.css("p._lao9xi")[4].text.strip},
    {name: s.css("h1._17ii67j5")[3].text.strip,
    paragraph: s.css("p._lao9xi")[5].text.strip},
    {name: s.css("h1._17ii67j5")[4].text.strip,
    paragraph: s.css("p._lao9xi")[6].text.strip},
    {name: s.css("h1._17ii67j5")[5].text.strip,
    paragraph: s.css("p._lao9xi")[7].text.strip},
    {name: s.css("h1._17ii67j5")[6].text.strip,
    paragraph: s.css("p._lao9xi")[8].text.strip},
    {name: s.css("h1._17ii67j5")[7].text.strip,
    paragraph: s.css("p._lao9xi")[9].text.strip},
    {name: s.css("h1._17ii67j5")[8].text.strip,
    paragraph: s.css("p._lao9xi")[10].text.strip},
    {name: s.css("h1._17ii67j5")[9].text.strip,
    paragraph: s.css("p._lao9xi")[11].text.strip},
    {name: s.css("h1._17ii67j5")[10].text.strip,
    paragraph: s.css("p._lao9xi")[12].text.strip},
    {name: s.css("h1._17ii67j5")[11].text.strip,
    paragraph: s.css("p._lao9xi")[13].text.strip},
    {name: s.css("h1._17ii67j5")[12].text.strip,
    paragraph: s.css("p._lao9xi")[14].text.strip},
    {name: s.css("h1._17ii67j5")[13].text.strip,
    paragraph: s.css("p._lao9xi")[15].text.strip}]
    studios
  end
end
