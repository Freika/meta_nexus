require 'spec_helper'

describe MetaNexus::Wow::ChallengeMode do
  skip 'succesfully get challenge mode info', :vcr do
    challenge_mode_client = MetaNexus::Wow::ChallengeMode.new('eu', 'en_US', ENV['BNET_API_KEY'])
    challenge_mode = challenge_mode_client.realm('eversong')
    # TODO: figure out how to test this HUGE json response.
  end

  skip 'succesfully get challenge mode region info', :vcr do
    challenge_mode_client = MetaNexus::Wow::ChallengeMode.new('eu', 'en_US', ENV['BNET_API_KEY'])
    challenge_mode = challenge_mode_client.region
    # TODO: figure out how to test this HUGE json response.
    # ? fixture ?
  end
end
