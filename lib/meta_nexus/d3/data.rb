class MetaNexus::D3::Data < MetaNexus::D3

  # Find D3 Item Data in Battle.net Diablo 3 Api
  # Required arguments:
  # name      - item name
  #
  # Example:
  #   d3 = MetaNexus::D3::Data
  #   d3.data('hand-axe')
  # Response in Hash:
  #   {"id"=>"Axe_1H_001", "name"=>"Hand Axe", "icon"=>"axe_1h_001_demonhunter_male", "displayColor"=>"white", "tooltipParams"=>"item/hand-axe", "requiredLevel"=>1, "itemLevel"=>1, "stackSizeMax"=>0, ...
  #
  # Find D3 Follower data in Battle.net Diablo 3 Api
  # Required arguments:
  # klass      - follower class
  #
  # Example:
  #   d3 = MetaNexus::D3::Data
  #   d3.follower('templar')
  # Resonse in Hash:
  # {"slug"=>"templar", "name"=>"Templar", "realName"=>"d3.follower.templar.realName", "portrait"=>"templar", "skills"=> ...
  #
  # Find D3 artisan data in Battle.net Diablo 3 Api
  # Required arguments:
  # name      - artisan name
  #
  # Example:
  #   d3 = MetaNexus::D3::Data
  #   d3.artisan('blacksmith')
  # Resonse in Hash will contain all artisan item
  #

  def self.item(name)
    call_url = "#{client.url}/data/item/#{name}?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.follower(klass)
    call_url = "#{client.url}/data/follower/#{klass}?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end

  def self.artisan(name)
    call_url = "#{client.url}/data/artisan/#{name}?locale=#{MetaNexus.config.locale}&apikey=#{MetaNexus.config.api_key}"
    MetaNexus::Api.call_api(call_url)
  end
end
