
class HarryPotter::CLI

  def call
    HarryPotter::API.character_list
    puts "Welcome to the Wizarding World of Harry Potter!"
    puts "We can tell you more about any of your favorite characters listed below."
    list_characters
    puts "Simply type the number by the character that you would like to learn more about!"
    puts "To see more, type 'more'"
    puts "If you would like to exit, simply type 'exit.'"
    menu
  end

  def menu
    input = nil
    input = gets.strip
    while input != "exit"
      if input = "more"
        list_characters(10)
        menu
      elsif input.to_i >= 1 && input.to_i <= 25 #input.to_i.between?(1, 25)
        pick_character(input.to_i)
        puts "Would you like to see another character? (y/n)"
        i = gets.strip.downcase
        if i == "y"
          puts "Pick a character:"
          list_characters
          menu
        elsif i == "n"
          puts "Thank you for exploring the magical world of wizards!"
          exit!
        else
          puts "Sorry, I don't understand. Please type the number of the character you would like to see, or type exit."
          list_characters
          menu
        end
      else
        puts "Sorry, I don't understand. Please type the number of the character you would like to see, or type exit."
        menu
      end
    end
    exit
    puts "Thank you for exploring the magical world of wizards!"
  end

  def list_characters(number_char = 5)
    HarryPotter::Characters.all_characters.first(number_char).each.with_index(1) do |name, index|
      puts "#{index}. #{name.name}"
    end
  end

  def pick_character(input)
    puts "Here is more information about #{HarryPotter::Characters.all_characters[input - 1].name}:"
    #puts "If the information is unknown, it will be left blank."
    puts "species: #{HarryPotter::Characters.all_characters[input - 1].species}" unless HarryPotter::Characters.all_characters[input - 1].species == ""
    puts "gender: #{HarryPotter::Characters.all_characters[input - 1].gender}" unless HarryPotter::Characters.all_characters[input - 1].gender== ""
    puts "house: #{HarryPotter::Characters.all_characters[input - 1].house}" unless HarryPotter::Characters.all_characters[input - 1].house == ""
    puts "date of birth: #{HarryPotter::Characters.all_characters[input - 1].dob}" unless HarryPotter::Characters.all_characters[input - 1].dob == ""
    puts "age in #{Date.today.year}: #{Date.today.year- HarryPotter::Characters.all_characters[input - 1].yob.to_i}" unless Date.today.year-HarryPotter::Characters.all_characters[input - 1].yob.to_i == Date.today.year
    puts "ancestry: #{HarryPotter::Characters.all_characters[input - 1].ancestry}" unless HarryPotter::Characters.all_characters[input - 1].ancestry == ""
    puts "eye colour: #{HarryPotter::Characters.all_characters[input - 1].eye_colour}" unless HarryPotter::Characters.all_characters[input - 1].eye_colour == ""
    puts "hair colour: #{HarryPotter::Characters.all_characters[input - 1].hair_colour}" unless HarryPotter::Characters.all_characters[input - 1].hair_colour == ""
    puts "wand: wood: #{HarryPotter::Characters.all_characters[input - 1].wand["wood"]}, core: #{HarryPotter::Characters.all_characters[input - 1].wand["core"]}, length: #{HarryPotter::Characters.all_characters[input - 1].wand["length"]} inches"
    puts "patronus: #{HarryPotter::Characters.all_characters[input - 1].patronus}" unless HarryPotter::Characters.all_characters[input - 1].patronus == ""
    puts "hogwarts student? #{HarryPotter::Characters.all_characters[input - 1].hogwarts_student}" unless HarryPotter::Characters.all_characters[input - 1].hogwarts_student == ""
    puts "hogwarts staff? #{HarryPotter::Characters.all_characters[input - 1].hogwarts_staff}" unless HarryPotter::Characters.all_characters[input - 1].hogwarts_staff == ""
    puts "actor: #{HarryPotter::Characters.all_characters[input - 1].actor}" unless HarryPotter::Characters.all_characters[input - 1].actor == ""
    puts "alive? #{HarryPotter::Characters.all_characters[input - 1].alive}" unless HarryPotter::Characters.all_characters[input - 1].alive == ""
    puts "image: #{HarryPotter::Characters.all_characters[input - 1].image}" unless HarryPotter::Characters.all_characters[input - 1].image == ""


  end

end
