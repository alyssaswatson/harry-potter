class HarryPotter::API

  def character_list
    character_data = RestClient.get('http://hp-api.herokuapp.com/api/characters')
    character_hash = JSON.parse(character_data)
    character_hash
    end
  end


end
