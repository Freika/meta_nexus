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
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/data/battlegroups/?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def character_races
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/data/character/races?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def character_classes
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/data/character/classes?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def character_achievements
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/data/character/achievements?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def guild_achievements
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/data/guild/achievements?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def guild_rewards
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/data/guild/rewards?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def guild_perks
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/data/guild/perks?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def item_classes
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/data/item/classes?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def talents
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/data/talents?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def pet_types
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/data/pet/types?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

end
