class HarryPotter::Characters

  attr_reader :name, :gender, :house, :species, :character, :date_birth, :year_birth, :ancestry, :character

  @@all = []

  def self.new_from_api(character_info)
    # harry.keys.each do |key|
    #   m = "#{key}="
    #   @character.send( m, hash[key] ) if @character.respond_to?( m )
    # end
    #   @@all << self

    name = character_info["name"],
    species = character_info["species"],
    gender = character_info["gender"],
    house = character_info["house"],
    dob = character_info["dateOfBirth"],
    yob = character_info["yearOfBirth"],
    ancestry = character_info["ancestry"],
    eye_colour = character_info["eyeColour"],
    hair_colour = character_info["hairColour"],
    wand = character_info["wand"],
    patronus = character_info["patronus"],
    hogwarts_student = character_info["hogwartsStudent"],
    hogwarts_staff = character_info["hogwartsStaff"],
    actor = character_info["actor"],
    alive = character_info["alive"],
    image = character_info["image"]
    @@all << self
    #binding.pry
  end

  def initialize(name = nil, species = nil, gender = nil, house = nil, dob = nil,
    yob = nil, ancestry = nil, eye_colour = nil, hair_colour = nil, wand = nil,
    patronus = nil, hogwarts_student = nil, hogwarts_staff = nil, actor = nil, alive = nil, image = nil)
    @name = name
    @species = species
    @gender = gender
    @house = house
    @dob = dob
    @yob = yob
    @ancestry = ancestry
    @eye_colour = eye_colour
    @hair_colour = hair_colour
    @wand = wand
    @patronus = patronus
    @hogwarts_student = hogwarts_student
    @hogwarts_staff = hogwarts_staff
    @actor = actor
    @alive = alive
    @image = image
    #@@all << self
  end

  def self.all
    #binding.pry
    @@all
  end

  def self.all_students
    puts "list of students"
    puts @@all
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
