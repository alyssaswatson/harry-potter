class HarryPotter::Characters

  attr_accessor :name, :gender, :house, :species, :character, :date_birth, :year_birth, :ancestry

  @@all = []

  def self.new_from_api
    @character = self
    HarryPotter::API.character_list.each do |char|
      char.each do |key, value|
      value[0] = @character.name
      value[1] = @character.species
      value[2] = self.gender
      value[3] = self.house
      value[4] = self.date_birth
      value[5] = self.year_birth
      value[6] = self.ancestry
    end
      @@all << self
    end
  end
#{"name"=>"Harry Potter", "species"=>"human", "gender"=>"male", "house"=>"Gryffindor", "dateOfBirth"=>"31-07-1980",
#"yearOfBirth"=>1980, "ancestry"=>"half-blood", "eyeColour"=>"green", "hairColour"=>"black", "wand"=>{"wood"=>"holly", "core"=>"phoenix feather", "length"=>11}
  def self.all
    #binding.pry
    @@all
  end

  def self.all_students
    puts "list of students"
  end

  def self.all_staff
    puts "list of staff"
  end

  def self.all_houses
    #check spelling haha
    puts "Please choose which house you are interested in:"
    puts "1. Gryfinndor"
    puts "2. Hufflepuff"
    puts "3. Ravenclaw"
    puts "4. Slytherin"
    input = gets.strip
    if input == "1"
      puts "all the gryfindors"
    elsif input == "2"
      puts "all the Hufflepuffs"
    elsif input == "3"
      puts "all the Ravenclaws"
    elsif input == "4"
      puts "all the Slytherin"
    else
      puts "Sorry, I dont understand! Please enet a number 1-4"
      self.houses
    end
  end

end
