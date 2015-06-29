class MetaNexus::Config
  attr_accessor :api_key, :region, :locale

  def initialize
    @api_key ||= ENV['BNET_API_KEY']
    @region  ||= 'eu'
    @locale  ||= 'en_GB'
  end
end
