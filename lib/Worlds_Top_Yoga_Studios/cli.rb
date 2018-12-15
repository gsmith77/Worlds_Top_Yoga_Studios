class WorldsTopYogaStudios::CLI
  
  def call
    puts "Here are 9 amazing yoga studios"
    menu
    goodbye
  end
  
  def menu
    input = nil
    while input != "exit"
    puts "Enter the number of which yoga studio you would like more information about:"
    input = gets.strip.downcase
    case input
    when "1"
      puts "Yoga Studio 1 Information:"
    when "2"
      puts "Yoga Studio 2 Information:"
    when "3"
      puts "Yoga Studio 3 Information:"
    when "4"
      puts "Yoga Studio 4 Information:"
    when "5"
      puts "Yoga Studio 5 Information:"
    when "6"
      puts "Yoga Studio 6 Information:"
    when "7"
      puts "Yoga Studio 7 Information:"
    when "8"
      puts "Yoga Studio 8 Information:"
    when "9"
      puts "Yoga Studio 9 Information:"
    else 
      "Not sure what you meant... Please enter 1-9 or exit"
    end
  end
  
  def goodbye
    puts "See you later! As always, namaste."
  end
end
end