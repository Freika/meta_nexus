class MetaNexus::Wow::Achievement < MetaNexus::Wow

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
    call_url = "#{client.url}/achievement/#{id}?locale=#{@locale}&apikey=#{@api_key}"
    MetaNexus::Api.call_api(call_url)
  end
end
