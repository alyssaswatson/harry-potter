
class HarryPotter::CLI

  def call
    HarryPotter::API.character_list
    puts "Welcome to the Wizarding World of Harry Potter!"
    puts "We can tell you more about any of your favorite characters."
    menu
  end

  def menu
    input = nil
    puts "How would you like to see the characters: (1, 2, or 3)"
    puts 'You may also exit by typing "exit."'
    puts "1. All Students"
    puts "2. All Staff"
    puts "3. By House"
    input = gets.strip.downcase
    if input == "1"
      list_students
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

  def list_students
    @students = HarryPotter::Characters.all_students
  end

  def list_staff
    @staff = HarryPotter::Characters.all_staff
  end

  def list_houses
    #Somehow offer each house and let the user pick which house to view
    @houses = HarryPotter::Characters.all_houses
  end

end
