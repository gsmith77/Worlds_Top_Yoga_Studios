class WorldsTopYogaStudios::CLI
  
  def call
    WorldsTopYogaStudios::Scraper.new.make_studios
    puts "Here are 9 amazing yoga studios"
    start
  end
  
  def list_studios
    binding.pry
    @all_studios = WorldsTopYogaStudios::Studio.all
    @all_studios.each.with_index(1) do |s, index|
      puts "#{index}. #{s.name} - #{s.location} - #{s.url}"
    end
  end
  
  def start
    puts ""
    puts "Enter the number of which yoga studio you would like more information about or hit list to display the studios again:"
    
    input = gets.strip
    
    studio = WorldsTopYogaStudios::Studio.find(input.to_i)
    
    print_studio(studio)
    
    puts ""
    puts "Would you like to see another studio? Y or N"
    if "Y"
      start
      elsif "N"
      goodbye
    else ""
      puts "Sorry did not understand that please tyoe 1-9 to get more information on a studio."
    
  def print_studio(studio)
    puts ""
    puts "---------- #{studio.name} -----------"
    puts ""
    puts "Location:  #{studio.location}"
    puts "Website:   #{studio.url}"
    puts ""
  end
    
  def goodbye
    puts "See you later! As always, namaste."
  end
end
end