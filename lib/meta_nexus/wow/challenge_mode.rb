class MetaNexus::Wow::ChallengeMode < MetaNexus::Wow

  # Get information about challenge mode stats in certain realm
  # Required arguments:
  # realm      - realm name
  #
  # Example:
  #   challenge_mode = MetaNexus::Wow::ChallengeMode.get('eu', 'en_US', 'api_key')
  #   challenge_mode.get('eversong')
  # Response in Hash:
  #   { "challenge": [{ "realm": { "name": "Eversong", "slug": "eversong", "battlegroup": "Vindication", "locale": "ru_RU", "timezone": "Europe/Paris", "connected_realms": ["eversong"] } ...
  #
  # Get information about top-100 players in current region
  #
  # Example:
  #   challenge_mode = MetaNexus::Wow::ChallengeMode.get('eu', 'en_US', 'api_key')
  #   challenge_mode.region
  # Response in Hash:
  #   {"challenge":[{"map":{"id":1182,"name":"Auchindoun","slug":"auchindoun","hasChallengeMode":true,"bronzeCriteria":{"time":3300000,"hours":0,"minutes":55,"seconds":0,"milliseconds":0,"isPositive":true},"silverCriteria": ...
  #

  def self.realm(realm)
    call_url = "#{client.url}/challenge/#{realm}?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.region
    call_url = "#{client.url}/challenge/region?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end
end
