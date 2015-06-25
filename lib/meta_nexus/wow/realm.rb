class MetaNexus::Wow::Realm < MetaNexus::Wow

  # Find Realm info in Battle.net WoW Api
  # Required arguments:
  # realm      - Realm name
  #
  # Example:
  #   realm = MetaNexus::Wow::Realm.new('eu', 'en_US', 'api_key')
  #   realm.find('shadowsong')
  # Response in Hash:
  #   {"realms": [{ "type": "pvp", "population": "high", "queue": false, "wintergrasp": { "area": 1, "controlling-faction": 0, "status": 0, "next":}, "tol-barad": { "area": 21, "controlling-faction": 0, "status": 1, "next":}, "status": true, "name": "Aegwynn", "slug": "aegwynn", "battlegroup": "Misery", "locale": "de_DE", "timezone": "Europe/Paris", "connected_realms": ["aegwynn", "internal-record" } ...
  #
  # PvP Area Status Fields

  # area - An internal id of this zone.
  # controlling-faction - Which faction is controlling the zone at the moment. Possible values are
  # 0: Alliance
  # 1: Horde
  # 2: Neutral
  # status - The current status of the zone. The possible values are
  # -1: Unknown
  # 0: Idle
  # 1: Populating
  # 2: Active
  # 3: Concluded
  # next - A timestamp of when the next battle starts.

  def status
    call_url = "#{client.url}/realm/status?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end
end
