class MetaNexus::D3 < MetaNexus::Api
  def url
    "#{super}/d3"
  end

  def client
    MetaNexus::D3.new(@region, @api_key)
  end
end
