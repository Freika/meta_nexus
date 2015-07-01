require 'spec_helper'

describe MetaNexus::Wow::Achievement do

  it 'succesfully get achievement info', :vcr do
    achievement_client = MetaNexus::Wow::Achievement
    achievement = achievement_client.find(200)
    expect(achievement).to eq ({"id"=>200, "title"=>"Persistent Defender", "points"=>10, "description"=>"Return 50 flags as a defender in Warsong Gulch.", "rewardItems"=>[], "icon"=>"achievement_bg_interruptx_flagcapture_attempts", "criteria"=>[{"id"=>440, "description"=>"Return the flag 50 times", "orderIndex"=>1, "max"=>50}], "accountWide"=>false, "factionId"=>2})
  end
end
