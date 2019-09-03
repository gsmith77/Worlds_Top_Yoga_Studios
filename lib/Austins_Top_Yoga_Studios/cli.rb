class AustinsTopYogaStudios::CLI

  attr_reader :input

  def call
    menu
    goodbye
  end

  def list_studios
    puts "Here are some amazing yoga studios in Austin, Tx"
    sleep(1.8)
    @all_studios = AustinsTopYogaStudios::Studio.all
    @all_studios.each.with_index(1) do |s, index|
      puts "#{index}. #{s.name}"
    end
  end


  def menu
    while input != "exit"
      puts ""
      puts "Enter the number of which yoga studio you would like more information about or hit list to display the studios:"

      @input = gets.strip.downcase

      if input == "list"
        list_studios
      elsif input.to_i.between?(1, AustinsTopYogaStudios::Studio.all.length)
        the_studio = AustinsTopYogaStudios::Studio.all[input.to_i - 1]
        puts "#{the_studio.name} - #{the_studio.paragraph}"
      elsif input == "exit"
        break
      else
        puts "Do not understand what you mean... type 1-#{AustinsTopYogaStudios::Studio.all.length} or type exit to exit"
      end
    end
  end

  def goodbye
    puts "See you later! As always, namaste."
  end
end
