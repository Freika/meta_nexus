class MetaNexus::Wow::Quest < MetaNexus::Wow

  # Find Quest info in Battle.net WoW Api
  # Required arguments:
  # id      - quest id
  #
  # Example:
  #   quest = MetaNexus::Wow::Quest
  #   quest.find('2v2')
  # Response in Hash:
  #   {"id"=>13146, "title"=>"Generosity Abounds", "reqLevel"=>77, "suggestedPartyMembers"=>0, "category"=>"Icecrown", "level"=>80}
  #

  def self.find(id)
    call_url = "#{client.url}/quest/#{id}?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end
end
