require 'spec_helper'

describe MetaNexus::Sc2::Ladder do

  it 'succesfully get sc2 achievements info', :vcr do
    sc2 = MetaNexus::Sc2::Ladder
    ladder = sc2.ladder(2200)
    # TODO: use fixture to test.
  end
end
