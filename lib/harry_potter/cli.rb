
class HarryPotter::CLI

  def call
    HarryPotter::API.character_list
    puts "Welcome to the Wizarding World of Harry Potter!"
    puts "We can tell you more about any of your favorite characters listed below."
    list_characters
    puts "Simply type the number by the character that you would like to learn more about!"
    menu
  end

  def menu
    input = nil
    input = gets.strip.to_i
    if input >= 1 && input <= 25
      pick_character(input)
    else
      exit!
    end
  end

  def list_characters
    #change to an .each_with_index at some point?
    counter = 0
    HarryPotter::Characters.all_characters.each do |name|
      counter += 1
      puts "#{counter}. #{name.name}"
      #binding.pry
    end
  end

  def pick_character(input)
    #binding.pry
    puts HarryPotter::Characters.all_characters[input - 1].name
  end

end
