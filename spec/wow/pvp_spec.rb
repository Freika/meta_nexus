require 'spec_helper'

describe MetaNexus::Wow::Pvp do
  skip 'succesfully get challenge mode info', :vcr do
    pvp_client = MetaNexus::Wow::Pvp.new('eu', 'en_US', ENV['BNET_API_KEY'])
    pvp = pvp_client.realm('eversong')
    # TODO: figure out how to test this HUGE json response.
  end
end
