class HarryPotter::API
  attr_accessor :character_hash

  def self.character_list
    character_data = RestClient.get('http://hp-api.herokuapp.com/api/characters')
    @character_hash = JSON.parse(character_data)
    @character_hash.each do |chars|
          HarryPotter::Characters.new_from_json(chars)
    end
  end

end
