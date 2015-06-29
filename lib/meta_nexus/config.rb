class MetaNexus::Config
  attr_accessor :api_key, :region, :locale

  def initialize(region = 'eu', locale = 'en_GB')
    @api_key ||= ENV['BNET_API_KEY']
    @region  ||= region
    @locale  ||= locale
  end
end
