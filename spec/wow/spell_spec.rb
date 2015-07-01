require 'spec_helper'

describe MetaNexus::Wow::Spell do
  it 'succesfully get spell info', :vcr do
    spell_client = MetaNexus::Wow::Spell
    spell = spell_client.find('8056')
    expect(spell).to eq({"id"=>8056, "name"=>"Frost Shock", "icon"=>"spell_frost_frostshock", "description"=>"Instantly shocks an enemy with frost, dealing 2,631 Frost damage and reducing the target's movement speed by 50%. Lasts 8 sec.", "range"=>"25 yd range", "powerCost"=>"1.25% of base mana", "castTime"=>"Instant", "cooldown"=>"6 sec cooldown"})
  end
end
