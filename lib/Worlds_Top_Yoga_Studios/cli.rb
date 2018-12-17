class WorldsTopYogaStudios::CLI
  
  def call
    puts "Here are 9 amazing yoga studios"
    list_studios
  end
  
  def list_studios
    binding.pry
    @all_studios = WorldsTopYogaStudios::Studio.all
    @all_studios.each.with_index(1) do |s, index|
      puts "#{index}. #{s.name} - #{s.location} - #{s.url}"
    end
  end
  
  def menu
    input = ""
    while input != "exit"
    puts "            "
    puts "Enter the number of which yoga studio you would like more information about or hit list to display the studios again:"
    input = gets.strip.downcase
    
    if input.to_i > 0
      @all_studios[input.to_i - 1]
      puts "#{@all_studios.name} - #{@all_studios.location} - #{@all_studios.url}"
      elsif input == "list"
      list_studios
    else 
      puts "            "
      puts "Not sure what you meant... Please enter 1-9 or exit"
    end
  end
  
  def goodbye
    puts "See you later! As always, namaste."
  end
end
end