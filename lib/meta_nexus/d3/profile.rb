class MetaNexus::D3::Profile < MetaNexus::D3

  # Find D3 Profile in Battle.net Diablo 3 Api
  # Required arguments:
  # battle_tag      - User battle tag, must be used in such format: 'Name-1212' (replace '#' symbol with '-')
  #
  # Example:
  #   d3 = MetaNexus::D3::Profile.new('eu', 'en_US', 'api_key')
  #   d3.profile('Scorch-2320')
  # Response in Hash:
  #   {"battleTag" : "Scorch#2826", "paragonLevel" : 224, "paragonLevelHardcore" : 0,"paragonLevelSeason" : 4,"paragonLevelSeasonHardcore" : 0,"heroes" : [ {"paragonLevel" : 224, ...
  #
  # Find D3 character in Battle.net Diablo 3 Api
  # Required arguments:
  # battle_tag      - User battle tag, must be used in such format: 'Name-1212' (replace '#' symbol with '-')
  # hero_id         - id of hero to look for
  #
  # Example:
  #   d3 = MetaNexus::D3::Profile.new('eu', 'en_US', 'api_key')
  #   d3.hero('Scorch-2320', 9034002)
  # Resonse in Hash will contain info about character
  #

  def profile(battle_tag)
    call_url = "#{client.url}/profile/#{battle_tag}/?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

  def hero(battle_tag, hero_id)
    call_url = "#{client.url}/profile/#{battle_tag}/hero/#{hero_id}?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end
end
