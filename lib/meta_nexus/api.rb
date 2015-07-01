class MetaNexus::Api
  include HTTParty

  def url
    "https://#{MetaNexus.config.region}.api.battle.net"
  end

  def self.call_api(call_url)
    response = HTTParty.get(call_url)
    JSON.parse(response.body)
  end
end
