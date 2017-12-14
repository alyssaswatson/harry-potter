class HarryPotter::API

  def self.character_list
    character_data = RestClient.get('http://hp-api.herokuapp.com/api/characters')
    character_hash = JSON.parse(character_data)
    character_hash
  end


end
