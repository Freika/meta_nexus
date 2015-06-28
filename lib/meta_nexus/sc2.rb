class MetaNexus::Sc2 < MetaNexus::Api
  def url
    "#{super}/sc2"
  end

  def client
    MetaNexus::Sc2.new(@region, @api_key)
  end
end
