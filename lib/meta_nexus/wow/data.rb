class MetaNexus::Wow::Data < MetaNexus::Wow

  # Find data info in Battle.net WoW Api
  #
  # Example:
  #   data = MetaNexus::Wow::Data
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

  def self.battlegroups
    call_url = "#{client.url}/data/battlegroups/?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.character_races
    call_url = "#{client.url}/data/character/races?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.character_classes
    call_url = "#{client.url}/data/character/classes?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.character_achievements
    call_url = "#{client.url}/data/character/achievements?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.guild_achievements
    call_url = "#{client.url}/data/guild/achievements?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.guild_rewards
    call_url = "#{client.url}/data/guild/rewards?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.guild_perks
    call_url = "#{client.url}/data/guild/perks?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.item_classes
    call_url = "#{client.url}/data/item/classes?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.talents
    call_url = "#{client.url}/data/talents?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.pet_types
    call_url = "#{client.url}/data/pet/types?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

end
