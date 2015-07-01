require 'spec_helper'

describe MetaNexus::Wow::Quest do
  it 'succesfully get single quest info', :vcr do
    quest_client = MetaNexus::Wow::Quest
    quest = quest_client.find('13146')
    expect(quest).to eq({"id"=>13146, "title"=>"Generosity Abounds", "reqLevel"=>77, "suggestedPartyMembers"=>0, "category"=>"Icecrown", "level"=>80})
  end
end
