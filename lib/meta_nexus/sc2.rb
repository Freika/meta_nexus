class MetaNexus::Sc2 < MetaNexus::Api
  def url
    "#{super}/sc2"
  end

  def client
    MetaNexus::Sc2.new(MetaNexus.config.region, MetaNexus.config.api_key)
  end
end
