class MetaNexus::Config
  attr_accessor :api_key, :region, :locale

  def initialize
    @api_key = {}
    @region = {}
    @locale = {}
  end
end
