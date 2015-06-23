class MetaNexus::Wow::Achievement < MetaNexus::Wow

  # Find Achievement in Battle.net WoW Api
  # Required arguments:
  # id      - achievement id
  #
  # Example:
  #   achievement = MetaNexus::Wow::Achievement.new('eu', 'en_US', 'api_key')
  #   achievement.find(200)
  # Response:
  #   {"id"=>200, "title"=>"Persistent Defender", "points"=>10, "description"=>"Return 50 flags as a defender in Warsong Gulch.", "rewardItems"=>[], "icon"=>"achievement_bg_interruptx_flagcapture_attempts", "criteria"=>[{"id"=>440, "description"=>"Return the flag 50 times", "orderIndex"=>1, "max"=>50}], "accountWide"=>false, "factionId"=>2}
  #


  def find(id)
    achievement_id = id
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/achievement/#{achievement_id}?locale=#{@locale}&apikey=#{@api_key}"

    json = HTTParty.get(call_url)
  end
end
