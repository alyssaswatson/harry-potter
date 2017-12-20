
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
    input = gets.strip.downcase
    if input == "1"
      list_characters
      menu
    elsif input == "2"
      list_staff
      menu
    elsif input == "3"
      list_houses
      menu
    elsif input == "exit"
      puts "Thank you for exploring the magical world of wizards!"
      exit
    else
      puts "Sorry, please enter 1, 2, or 3 to see more information or 'exit' to leave the program."
      menu
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

end
