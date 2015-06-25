class MetaNexus::Wow::Pvp < MetaNexus::Wow

  # Find PVP leaderboards info in Battle.net WoW Api
  # Required arguments:
  # bracket      - bracket. Valid entries are: '2v2', '3v3', '5v5' and 'rbg'
  #
  # Example:
  #   bracket = MetaNexus::Wow::Pvp.new('eu', 'en_US', 'api_key')
  #   bracket.leaderboard('2v2')
  # Response in Hash:
  #   Huge hash with leaderboard.
  #


  def leaderboard(bracket)
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/leaderboard/#{bracket}?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end
end
