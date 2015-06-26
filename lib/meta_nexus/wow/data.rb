class MetaNexus::Wow::Data < MetaNexus::Wow

  # Find data info in Battle.net WoW Api
  #
  # Example:
  #   data = MetaNexus::Wow::Data.new('eu', 'en_US', 'api_key')
  #   data.battlegroups
  #   data.character_races
  #   data.character_classes
  #   data.character_achievements
  #   data.guild_achievements
  #   data.guild_rewards
  #   data.guild_perks
  #   data.item_classes
  #   data.talents
  #   data.pet_types
  #
  # Each method will return appropriate information in Hash format.
  #

  def battlegroups
    call_url = "#{client.url}/data/battlegroups/?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

  def character_races
    call_url = "#{client.url}/data/character/races?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

  def character_classes
    call_url = "#{client.url}/data/character/classes?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

  def character_achievements
    call_url = "#{client.url}/data/character/achievements?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

  def guild_achievements
    call_url = "#{client.url}/data/guild/achievements?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

  def guild_rewards
    call_url = "#{client.url}/data/guild/rewards?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

  def guild_perks
    call_url = "#{client.url}/data/guild/perks?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

  def item_classes
    call_url = "#{client.url}/data/item/classes?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

  def talents
    call_url = "#{client.url}/data/talents?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

  def pet_types
    call_url = "#{client.url}/data/pet/types?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end

end
