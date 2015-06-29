class MetaNexus::Sc2::Data < MetaNexus::Sc2

  # Find Sc2 achievements data in Battle.net StarCraft 2 Api
  # Example:
  #   sc2 = MetaNexus::Sc2::Data
  #   sc2.achievements
  # Response in Hash will contain huge data array with achievements
  #
  # Find Sc2 Follower data in Battle.net Diablo 3 Api
  # Example:
  #   sc2 = MetaNexus::Sc2::Data
  #   sc2.rewards
  # Response in Hash will contain huge data array with rewards
  #

  def achievements
    call_url = "#{client.url}/data/achievements?locale=#{@locale}&apikey=#{@api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def rewards
    call_url = "#{client.url}/data/rewards?locale=#{@locale}&apikey=#{@api_key}"
    MetaNexus::Api.call_api(call_url)
  end
end
