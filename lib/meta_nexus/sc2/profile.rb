class MetaNexus::Sc2::Profile < MetaNexus::Sc2

  # Find Sc2 Profile in Battle.net StarCraft 2 Api
  # Required arguments:
  # id          - User profile id
  # region      - User profile region id
  # name        - User profile name
  #
  # Example:
  #   sc2 = MetaNexus::Sc2::Profile.new('eu', 'ru_RU', 'api_key')
  #   sc2.profile(10886, 2, 'out')
  # Response in Hash:
  #   {"id"=>10886, "realm"=>2, "displayName"=>"out", "clanName"=>"TopolM", "clanTag"=>"SS27", "profilePath"=>"/profile/10886/2/out/", "portrait"=>{"x"=>-270, "y"=>-270, "w"=>90, "h"=>90, "offset"=>21, ...
  #
  # Find Sc2 profile ladders in Battle.net StarCraft 2 Api
  # Required arguments: same as for profile
  #
  # Example:
  #   Sc2 = MetaNexus::Sc2::Profile.new('eu', 'en_US', 'api_key')
  #   sc2.ladders(10886, 2, 'out')
  # Resonse in Hash:
  # {"currentSeason"=>[], "previousSeason"=>[], "showcasePlacement"=>[]}
  #
  # Find Sc2 profile match history in Battle.net Diablo 3 Api
  # Required arguments: same as for profile
  #
  # Example:
  #   Sc2 = MetaNexus::Sc2::Profile.new('eu', 'en_US', 'api_key')
  #   sc2.match_history(10886, 2, 'out')
  # Resonse in Hash:
  # {"matches"=>[{"map"=>"Исследовательский комплекс", "type"=>"THREES", "decision"=>"WIN", "speed"=>"FASTER", ...
  #

  def profile(id, region, name)
    call_url = "#{client.url}/profile/#{id}/#{region}/#{name}/?locale=#{@locale}&apikey=#{@api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def ladders(id, region, name)
    call_url = "#{client.url}/profile/#{id}/#{region}/#{name}/ladders?locale=#{@locale}&apikey=#{@api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def match_history(id, region, name)
    call_url = "#{client.url}/profile/#{id}/#{region}/#{name}/matches?locale=#{@locale}&apikey=#{@api_key}"
    MetaNexus::Api.call_api(call_url)
  end

end
