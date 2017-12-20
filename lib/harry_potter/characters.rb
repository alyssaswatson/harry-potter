class HarryPotter::Characters

  attr_reader :name, :gender, :house, :species, :dob, :yob, :eye_colour, :hair_colour, :wand, :patronus, :hogwarts_student, :hogwarts_staff, :actor, :alive, :image

  @@characters = []

  def self.new_from_api(character_info)
    # character_info.keys.each do |key|
    #   m = "#{key}="
    #   @character.send( m, hash[key] ) if @character.respond_to?( m )
    # end
    self.new(
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
    image = character_info["image"])
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
    @@characters << self
  end

  def self.all_characters
    @@characters
  end

end
