require 'spec_helper'

describe MetaNexus::Wow::Pvp do
  skip 'succesfully get pvp leaderboards info', :vcr do
    pvp_client = MetaNexus::Wow::Pvp
    pvp = pvp_client.realm('eversong')
    # TODO: figure out how to test this HUGE json response.
  end
end
