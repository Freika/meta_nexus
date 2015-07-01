require 'spec_helper'

describe MetaNexus::Sc2::Data do

  it 'succesfully get sc2 achievements info', :vcr do
    sc2 = MetaNexus::Sc2::Data
    achievements = sc2.achievements
    # TODO: use fixture to test.
  end

  it 'succesfully get sc2 rewards info', :vcr do
    sc2 = MetaNexus::Sc2::Data
    rewards = sc2.rewards
    # TODO: use fixture to test.
  end
end
