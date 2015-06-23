module MetaNexus
  class Api
    include HTTParty

    def initialize(region = nil, locale = nil, api_key = nil)
      @region = region ||= 'eu'
      @api_key = api_key ||= ENV['BNET_API_KEY']
      @locale = locale ||= 'en_US'
    end

    def url
      "https://#{@region}.api.battle.net"
    end
  end
end
