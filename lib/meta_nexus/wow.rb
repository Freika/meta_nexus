class MetaNexus::Wow < MetaNexus::Api
  def url
    "#{super}/wow"
  end

  def client
    MetaNexus::Wow.new
  end
end
