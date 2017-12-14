class HarryPotter::API

  def character_list
    character_data = RestClient.get('http://hp-api.herokuapp.com/api/characters')
    @character_hash = JSON.parse(character_data)
    @character_hash.each do |char|
       HarryPotter::Students.new_from_api(char)
    end
  end


end
