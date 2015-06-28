class MetaNexus::Wow::Auction < MetaNexus::Wow

  # Find Auction in Battle.net WoW Api
  # Required arguments:
  # realm      - realm name
  #
  # Example:
  #   auction = MetaNexus::Wow::Auction.new('eu', 'en_US', 'api_key')
  #   auction.find('eversong')
  # Response in Hash:
  #   {"id"=>200, "title"=>"Persistent Defender", "points"=>10, "description"=>"Return 50 flags as a defender in Warsong Gulch.", "rewardItems"=>[], "icon"=>"Auction_bg_interruptx_flagcapture_attempts", "criteria"=>[{"id"=>440, "description"=>"Return the flag 50 times", "orderIndex"=>1, "max"=>50}], "accountWide"=>false, "factionId"=>2}
  #

  def find(realm)
    call_url = "#{client.url}/auction/data/#{realm}?locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end
end
