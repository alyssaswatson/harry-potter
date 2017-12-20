
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
      puts "Pick another character or type exit to exit:"
      list_characters
      menu
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
    puts "Here is more information about #{HarryPotter::Characters.all_characters[input - 1].name}:"
    puts "species: #{HarryPotter::Characters.all_characters[input - 1].species}"
    puts "gender: #{HarryPotter::Characters.all_characters[input - 1].gender}"
    puts "house: #{HarryPotter::Characters.all_characters[input - 1].house}"
    puts "date of birth: #{HarryPotter::Characters.all_characters[input - 1].dob}"
    puts "age: #{Date.today.year- HarryPotter::Characters.all_characters[input - 1].yob.to_i}"
    puts "ancestry: #{HarryPotter::Characters.all_characters[input - 1].ancestry}"
    puts "eye colour: #{HarryPotter::Characters.all_characters[input - 1].eye_colour}"
    puts "hair colour: #{HarryPotter::Characters.all_characters[input - 1].hair_colour}"
    puts "wand: #{HarryPotter::Characters.all_characters[input - 1].wand}"
    puts "patronus: #{HarryPotter::Characters.all_characters[input - 1].patronus}"
    puts "hogwarts student? #{HarryPotter::Characters.all_characters[input - 1].hogwarts_student}"
    puts "hogwarts staff? #{HarryPotter::Characters.all_characters[input - 1].hogwarts_staff}"
    puts "actor: #{HarryPotter::Characters.all_characters[input - 1].actor}"
    puts "alive? #{HarryPotter::Characters.all_characters[input - 1].alive}"
    puts "image: #{HarryPotter::Characters.all_characters[input - 1].image}"
  end

end
