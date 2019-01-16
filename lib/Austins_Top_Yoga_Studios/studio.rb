class AustinsTopYogaStudios::Studio

  attr_accessor :name, :paragraph

  def initialize(name:, paragraph:)
    @name = name
    @paragraph = paragraph
  end

  def self.all
    @@all ||= self.load_from_scraper
  end

  def self.load_from_scraper
    Scraper.scraper.map do |studio_hash|
      self.new({studio_hash})
    end
  end
end
