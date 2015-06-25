require 'spec_helper'

describe MetaNexus::Wow::Guild do
  let(:guild_client) { MetaNexus::Wow::Guild.new('eu', 'en_US', ENV['BNET_API_KEY']) }

  it 'succesfully get guild info', :vcr do
    guild = guild_client.find('shadowsong', 'Goblins')
    expect(guild).to eq ({"lastModified"=>1435261344000, "name"=>"Goblins", "realm"=>"Shadowsong", "battlegroup"=>"Reckoning / Abrechnung", "level"=>25, "side"=>1, "achievementPoints"=>2500, "emblem"=>{"icon"=>12, "iconColor"=>"ffb1b8b1", "border"=>3, "borderColor"=>"ffffffff", "backgroundColor"=>"ff232323"}})
  end
end






