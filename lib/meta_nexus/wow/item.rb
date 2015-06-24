class MetaNexus::Wow::Item < MetaNexus::Wow

  # Find Achievement in Battle.net WoW Api
  # Required arguments:
  # id      - achievement id
  #
  # Example:
  #   achievement = MetaNexus::Wow::Achievement.new('eu', 'en_US', 'api_key')
  #   achievement.find(200)
  # Response in Hash:
  #   {"id"=>200, "title"=>"Persistent Defender", "points"=>10, "description"=>"Return 50 flags as a defender in Warsong Gulch.", "rewardItems"=>[], "icon"=>"achievement_bg_interruptx_flagcapture_attempts", "criteria"=>[{"id"=>440, "description"=>"Return the flag 50 times", "orderIndex"=>1, "max"=>50}], "accountWide"=>false, "factionId"=>2}
  #


  def find(id)
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/item/#{id}?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

  def set(id)
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/item/set/#{id}?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end
end
