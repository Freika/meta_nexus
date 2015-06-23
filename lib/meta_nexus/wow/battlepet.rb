class MetaNexus::Wow::BattlePet < MetaNexus::Wow

  # Find BattlePet ability in Battle.net WoW Api
  #
  # Required arguments:
  # id      - ability id
  #
  # Example:
  #   battlepet = MetaNexus::Wow::BattlePet.new('eu', 'en_US', 'api_key')
  #   battlepet.ability(640)
  # Response in JSON format:
  #   {"id"=>640, "name"=>"Toxic Smoke", "icon"=>"spell_shadow_plaguecloud", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}
  #

  # Find BattlePet species in Battle.net WoW Api
  #
  # Required arguments:
  # id      - species id
  #
  # Example:
  #   battlepet = MetaNexus::Wow::BattlePet.new('eu', 'en_US', 'api_key')
  #   battlepet.species(258)
  # Response in JSON format:
  #   {"speciesId"=>258, "petTypeId"=>9, "creatureId"=>42078, "name"=>"Mini Thor", "canBattle"=>true, "icon"=>"t_roboticon", "description"=>"Powerful artillery of the terran army. The Thor is always the first one in and the last one out!", "source"=>"Promotion: StarCraft II: Wings of Liberty Collector's Edition", "abilities"=>[{"slot"=>1, "order"=>1, "requiredLevel"=>2, "id"=>640, "name"=>"Toxic Smoke", "icon"=>"spell_shadow_plaguecloud", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}, {"slot"=>0, "order"=>0, "requiredLevel"=>1, "id"=>777, "name"=>"Missile", "icon"=>"ability_racial_rocketbarrage", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}, {"slot"=>0, "order"=>3, "requiredLevel"=>10, "id"=>455, "name"=>"Batter", "icon"=>"inv_mace_02", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}, {"slot"=>2, "order"=>2, "requiredLevel"=>4, "id"=>636, "name"=>"Sticky Grenade", "icon"=>"inv_misc_pyriumgrenade", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}, {"slot"=>2, "order"=>5, "requiredLevel"=>20, "id"=>293, "name"=>"Launch Rocket", "icon"=>"ability_mount_rocketmount", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}, {"slot"=>1, "order"=>4, "requiredLevel"=>15, "id"=>634, "name"=>"Minefield", "icon"=>"inv_misc_bomb_09", "cooldown"=>5, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}]}
  #

  # Find BattlePet stats in Battle.net WoW Api
  #
  # Required arguments:
  # id       - battle pet id
  #
  # Optional arguments:
  #
  # breed_id - Breed id
  # quality_id - Quality id
  # level - Level
  #
  # Example:
  #   battlepet = MetaNexus::Wow::BattlePet.new('eu', 'en_US', 'api_key')
  #   battlepet.stats(258)
  # Response in JSON format:
  #   {"speciesId"=>258, "breedId"=>3, "petQualityId"=>1, "level"=>25, "health"=>1338, "power"=>261, "speed"=>193}
  #

  def ability(id)
    call_url = "#{client.url}/battlePet/ability/#{id}?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def species(id)
    call_url = "#{client.url}/battlePet/species/#{id}?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def stats(id, level = nil, breed_id = nil, quality_id = nil)
    call_url = "#{client.url}/battlePet/stats/#{id}?locale=#{@locale}&apikey=#{@api_key}"
    call_url += "&level=#{level}" if level
    call_url += "&breedId=#{breed_id}" if breed_id
    call_url += "&qualityId=#{quality_id}" if quality_id

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  private

  def client
    MetaNexus::Wow.new(@region, @api_key)
  end
end
