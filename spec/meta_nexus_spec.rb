require 'spec_helper'

describe MetaNexus do
  it 'has a version number' do
    expect(MetaNexus::VERSION).not_to be nil
  end

  it 'succesfully connects to Battle.net API', :vcr do
    response = HTTParty.get("https://eu.api.battle.net/wow/data/character/races?locale=en_GB&apikey=#{ENV['BNET_API_KEY']}
")
    expect(response.code).to eq 200
  end
end
