require 'spec_helper'


describe MetaNexus::D3::Data do
  let!(:d3) { MetaNexus::D3::Data }
  let!(:data_item) { File.open(File.dirname(__FILE__) + '/../fixtures/d3/data_item.rb') }

  it 'succesfully get D3 item info', :vcr do
    item = d3.item('hand-axe')
    expect(item).to eq(data_item.read)
  end

  it 'succesfully get D3 follower info', :vcr do
    follower = d3.follower('templar')
    expect(follower).to eq (File.read('../../fixtures/d3/data_follower.yml'))
  end

  skip 'succesfully get D3 artisan info', :vcr do
    artisan = d3.artisan('blacksmith')
    # TODO: use fixture to test.
  end
end
