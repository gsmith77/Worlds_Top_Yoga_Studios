class WorldsTopYogaStudios::CLI
  
  def call
    list_studios
    menu
    goodbye
  end
  
  def list_studios
    puts "Here are 9 amazing yoga studios"
    @all_studios = WorldsTopYogaStudios::Studio.all
    @all_studios.each.with_index(1) do |s, index|
      puts "#{index}. #{s.name} - #{s.paragraph}"
    end
  end
  
  def menu
    puts ""
    puts "Enter the number of which yoga studio you would like more information about or hit list to display the studios again:"
    
    input = gets.strip.downcase
    
    if input.to_i > 0
      the_studio = @all_studios[input.to_i - 1]
      puts "#{the_studio.name} - #{the_studio.paragraph}"
      elsif "list"
      list_studios
    else
      puts "Do not understand what you mean... type 1-9 ot type exit to exit"
    end
  end
    
  def goodbye
    puts "See you later! As always, namaste."
  end
end