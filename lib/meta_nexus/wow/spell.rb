class MetaNexus::Wow::Spell < MetaNexus::Wow

  # Find Spell info in Battle.net WoW Api
  # Required arguments:
  # id      - spell id
  #
  # Example:
  #   spell = MetaNexus::Wow::Spell.new('eu', 'en_US', 'api_key')
  #   spell.find(8056)
  # Response in Hash:
  #   {"id"=>8056, "name"=>"Frost Shock", "icon"=>"spell_frost_frostshock", "description"=>"Instantly shocks an enemy with frost, dealing 2,631 Frost damage and reducing the target's movement speed by 50%. Lasts 8 sec.", "range"=>"25 yd range", "powerCost"=>"1.25% of base mana", "castTime"=>"Instant", "cooldown"=>"6 sec cooldown"}
  #

  def find(id)
    call_url = "#{client.url}/spell/#{id}?locale=#{@locale}&apikey=#{@api_key}"
    MetaNexus::Api.call_api(call_url)
  end
end
