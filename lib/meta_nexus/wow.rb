class MetaNexus::Wow < MetaNexus::Api
  def url
    "#{super}/wow"
  end

  def self.client
    @client ||= new
  end
end
