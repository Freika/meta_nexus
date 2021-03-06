class MetaNexus::Sc2::Ladder < MetaNexus::Sc2

  # Find Sc2 Ladder info in Battle.net StarCraft 2 Api
  # Required arguments:
  # id          - Ladder id
  #
  # Example:
  #   sc2 = MetaNexus::Sc2::Ladder.new('eu', 'ru_RU', 'api_key')
  #   sc2.ladder(2200)
  # Response in Hash will contain huge data about top players on ladder.
  #

  def self.ladder(id)
    call_url = "#{client.url}/ladder/#{id}?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end
end
