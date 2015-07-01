require 'spec_helper'

describe MetaNexus::Wow::Auction do

  it 'succesfully get achievement info', :vcr do
    auction_client = MetaNexus::Wow::Auction
    auction = auction_client.find('eversong')
    expect(auction).to eq ({"files"=>[{"url"=>"http://eu.battle.net/auction-data/dc707dfc35f234b761f913ea5533f9f6/auctions.json", "lastModified"=>1435488336000}]})
  end
end
