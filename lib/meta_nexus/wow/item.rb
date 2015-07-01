class MetaNexus::Wow::Item < MetaNexus::Wow

  # Find Item in Battle.net WoW Api
  # Required arguments:
  # id      - item id
  #
  # Example:
  #   item = MetaNexus::Wow::Item
  #   item.find(18803)
  # Response in Hash:
  #   {"id"=>18803, "disenchantingSkillRank"=>225, "description"=>"Property of Finkle Einhorn, ...
  #
  # Find Item set in Battle.net WoW Api
  # Required arguments:
  # set_id  - set id
  # Example:
  #   item = MetaNexus::Wow::Item
  #   item.set(1060)
  # Response in Hash:
  #   {"id"=>1060, "name"=>"Deep Earth Vestments", "setBonuses"=>[{"description"=>"Reduces the mana cost of ...
  #

  def self.find(id)
    call_url = "#{client.url}/item/#{id}?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.set(id)
    call_url = "#{client.url}/item/set/#{id}?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end
end
