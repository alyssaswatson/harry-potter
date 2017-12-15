class HarryPotter::Characters

  attr_accessor :name, :gender, :house, :species, :character, :date_birth, :year_birth, :ancestry, :character

  @@all = []

  def character
    @character = character
  end

  def self.new_from_api
    #@character.new = self
    harry = {"name":"Harry Potter","species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"31-07-1980","yearOfBirth":1980,"ancestry":"half-blood","eyeColour":"green","hairColour":"black","wand":{"wood":"holly","core":"phoenix feather","length":11},"patronus":"stag","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Daniel Radcliffe","alive":true,"image":"http://hp-api.herokuapp.com/images/harry.jpg"}
    #HarryPotter::API.character_list.each do |char|
    harry.keys.each do |key|
      m = "#{key}="
      @character.send( m, hash[key] ) if @character.respond_to?( m )
    end
      @@all << self
  end

  def self.all
    #binding.pry
    @@all
  end

  def self.all_students

    @character

    harry = {"name":"Harry Potter","species":"human","gender":"male","house":"Gryffindor","dateOfBirth":"31-07-1980","yearOfBirth":1980,"ancestry":"half-blood","eyeColour":"green","hairColour":"black","wand":{"wood":"holly","core":"phoenix feather","length":11},"patronus":"stag","hogwartsStudent":true,"hogwartsStaff":false,"actor":"Daniel Radcliffe","alive":true,"image":"http://hp-api.herokuapp.com/images/harry.jpg"}
    #HarryPotter::API.character_list.each do |char|
    # harry.keys.each do |key|
    #   m = "#{key}="
    #   character.send( m, hash[key] ) if @character.respond_to?( m )
    #
    # end
    @character.name = harry[0]
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
